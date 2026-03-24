# UNIUN — AI Context & Rules

This file is the single source of truth for any AI assistant working on this codebase. Read it completely before touching any file.

---

## What Is UNIUN?

UNIUN is a **decentralized, offline-first social and knowledge network** built entirely on the Nostr protocol, implemented as a Flutter mobile application. Users create, share, and connect **Notes** — Nostr Kind 1 events — that form both a social feed and a personal knowledge graph. There is no backend server of any kind. All data is stored locally in an Isar database on the device and synced to the wider Nostr network via WebSocket relay connections managed by the EmbeddedServer (a separately maintained sync engine).

The app combines four systems into one: a social feed (Vishnu), a note creation workspace (Brahma), an AI assistant that reasons over the user's saved notes using on-device LLM inference (Shiv), and a public/private messaging layer (Channels + DMs). On-device AI runs via `flutter_gemma` (Google Gemma 2B/7B via MediaPipe) with no cloud API calls. The knowledge graph is not a separate construction — it emerges naturally from the Nostr event graph: every `e` tag is a graph edge, every `t` tag is a topic node, every reply thread is a directed conversation subgraph.

---

## Core Philosophy (NEVER Violate These)

- **Feed Freedom**: Notes are permanent. There is NO delete, NO soft-delete, NO NIP-09 implementation, NO `deleted` field, NO `isDeleted` field anywhere in any model, entity, or repository. Once published to Nostr, a note exists. The app does not pretend otherwise. This is an intentional design decision, not an oversight.

- **Offline-First**: The app works fully without internet. Isar is the source of truth. The UI reads only from Isar, never directly from a relay. EmbeddedServer syncs with relays when connectivity is available and writes results back to Isar.

- **No Backend**: Zero custom servers. No REST API. No GraphQL. No Firebase. Only Nostr relays (WebSocket protocol, NIP-01) and Blossom media servers (content-addressed HTTP blob store for images).

- **One Event Type for Notes**: Everything the user creates is a Nostr Kind 1 event — a "Note". There are no separate Post, Comment, Thread, or Reply models. Note roles (feed post vs reply vs reference) are **derived** from the presence or absence of `rootEventId` and `replyToEventId` fields. Never add a new model type that maps to a Reddit-style concept.

---

## Architecture

```
Flutter UI (Presentation Layer — BLoC)
    ↓ calls use cases
Domain Layer (entities, repository interfaces, use cases)
    ↓ implemented by
Data Layer (Isar models, repository implementations)
    ↑ written to by
EmbeddedServer (Dart Isolate — RelayConnector + SyncEngine + EventQueue + CleanupManager)
    ↔ WebSocket
Nostr Relay Network
```

**Key components:**
- **Flutter + BLoC**: State management via `flutter_bloc`. Events flow into BLoC, new States flow out to UI via `BlocBuilder`/`BlocListener`.
- **Clean Architecture**: Three strict layers — Data, Domain, Presentation — with unidirectional dependency flow (Presentation → Domain ← Data).
- **EmbeddedServer**: Built and maintained by a separate team. Runs in a Dart isolate. Manages relay WebSocket connections, incoming event processing, outgoing event queue, and retention cleanup. Do not modify EmbeddedServer internals.
- **Isar**: On-device NoSQL database. Object-based (no SQL). Used exclusively in the Data layer.
- **flutter_gemma**: On-device LLM runner for Shiv (AI assistant). Uses Google Gemma 2B or 7B via MediaPipe LLM Inference API. GPU-accelerated on Android (GPU delegate) and iOS (Metal).

### Layer Rules

**Data layer** (`lib/data/`):
- Contains Isar collection models (`@Collection`) and repository implementations.
- Models are **mutable** — no `@freezed` on Isar models (Isar requires mutable fields).
- May import `package:isar_community/isar.dart`.
- Must NOT import Flutter widget packages.
- Repository implementations are annotated `@Injectable(as: InterfaceName)`.
- All writes to Isar must be wrapped in `isar.writeTxn(() async { ... })`.

**Domain layer** (`lib/domain/`):
- Contains freezed entities, abstract repository interfaces, use cases, and input parameter classes.
- Has **zero** imports from `isar_community`, `flutter`, or any presentation package.
- Entities use `@freezed abstract class` pattern (Freezed 3.x requirement — not `class`).
- Repository interfaces define the contract; implementations live in `lib/data/repositories/`.
- Use cases extend `UseCase<ReturnType, InputType>` or `NoParamsUseCase<ReturnType>` from `lib/core/usecases/usecase.dart`.
- Results are always wrapped in `Either<Failure, T>` from the `dartz` package.

**Presentation layer** (`lib/presentation/` or feature folders like `lib/search/`, `lib/community/`):
- Contains BLoC classes, pages, and widgets.
- NO direct Isar access. All data flows through use cases → repositories.
- BLoC receives Events, calls use cases, emits States.
- Use `bloc_concurrency` for event transformers (e.g. `droppable()`, `sequential()`).

### Key Technical Decisions (from FINDINGS.md)

**Finding 001 — Unread Tracking via lastReadEventId**:
Unread badges for Channels and DMs are NOT implemented by marking all messages read on channel open. Instead, `ChannelReadStateModel` and `DMReadStateModel` each store a `lastReadEventId`. As the user scrolls, the last visible event ID is reported to the BLoC which updates `lastReadEventId`. `unreadCount = messages with createdAt after lastReadEventId`. This gives scroll-position resume (like Telegram's "you are here" marker) and a "jump to first unread" feature for free. The SyncEngine updates these models when new messages arrive.

**Finding 002 — On-Device LLM via flutter_gemma**:
Shiv uses `flutter_gemma` as the single LLM backend. No Strategy pattern for multiple backends in v1 — that adds complexity with no user benefit. `FlutterGemmaPlugin.instance.getResponseStream(prompt)` for token streaming. Model file is downloaded on first launch (~1.5GB for Gemma 2B, ~5GB for Gemma 7B). Gemma 2B runs on any modern phone with 4GB+ RAM.

**Finding 003 — Feed + Chat Use Same Scroll Model**:
Both the Vishnu feed and Channel/DM chat use the same `lastReadEventId` + chronological pagination pattern. Feed is chronological-only for v1 (no ranking algorithm). Pagination uses Isar's `createdLessThan(before)` cursor pattern. No separate architecture is needed for feed vs chat scroll.

**Finding 004 — GraphRAG: UNIUN's Nostr Graph IS the Knowledge Graph**:
Standard vector RAG retrieves notes by semantic similarity but fails at multi-hop queries and global summarization. GraphRAG solves both by traversing the note reference graph. UNIUN already has this graph for free: every `e` tag is a note→note edge (stored in `eTagRefs`), every `t` tag is a note→topic edge (stored in `tTags`), every reply thread is a directed conversation graph. No LLM entity extraction needed — these are user-asserted edges. v1 approach: seed with vector similarity, then BFS-expand via the graph. See `docs/graphrag.md` for full implementation details.

---

## Nostr Event Model

> Everything is a `NostrEvent`. The `kind` field determines meaning. There are no separate "users", "channels", or "posts" at the protocol level.

```
NostrEvent {
  id:         String  — SHA256 of canonical serialization
  pubkey:     String  — author's secp256k1 public key (this IS the user identity)
  created_at: int     — Unix timestamp
  kind:       int     — determines meaning
  tags:       List    — [[tag_name, value, ...], ...]
  content:    String  — meaning depends on kind
  sig:        String  — Schnorr signature over id
}
```

### Kind Reference (UNIUN-relevant)

| Kind  | Name                | Description                                      |
|-------|---------------------|--------------------------------------------------|
| 0     | User Metadata       | Profile (name, avatar, nip05, about)             |
| 1     | Short Text Note     | Public note — the primary unit in UNIUN          |
| 6     | Repost              | Repost of a Kind 1                               |
| 7     | Reaction            | Like or emoji on any event                       |
| 13    | Seal                | Layer 2 of encrypted DM (wraps Kind 14)          |
| 14    | DM Chat Message     | Actual DM content (inner rumor, unsigned)        |
| 40    | Channel Creation    | Creates a public channel; event ID = channel ID  |
| 41    | Channel Metadata    | Update channel name/description/icon             |
| 42    | Channel Message     | Message sent inside a channel                    |
| 1059  | Gift Wrap           | Outer envelope for encrypted DMs                 |
| 10063 | User Server List    | User's preferred Blossom media servers           |
| 24242 | Blossom Auth        | Signed auth token for Blossom uploads            |

### Tags Reference

```
["e", event_id, relay_url, marker, pubkey]  → references another event (graph edge)
["p", pubkey, relay_url]                    → references a user
["t", hashtag]                              → topic tag (graph node)
["a", kind:pubkey:d-tag, relay_url]         → reference to replaceable event
["imeta", "url ...", "m ...", "x ..."]      → inline media metadata (NIP-92)
```

**NIP-10 e-tag markers** (threading):
- `"root"` — the top-level post of the thread → stored as `rootEventId`
- `"reply"` — the direct parent being replied to → stored as `replyToEventId`
- `"mention"` — cited for reference only → stored in `eTagRefs`

### Note Roles (Derived, NOT Stored as a Field)

Note roles are inferred at query time. Never add a `role`, `isReply`, `isRoot`, or `noteRole` field to any model or entity.

| Role           | Condition                                    | UI location         |
|----------------|----------------------------------------------|---------------------|
| Top-level note | `rootEventId == null`                        | Vishnu feed         |
| Reply          | `rootEventId != null`                        | Thread view         |
| Reference      | `type == NoteType.reference`                 | Knowledge graph link|

---

## NIP Implementation Stack

### Used in UNIUN

| NIP    | Purpose                                         |
|--------|-------------------------------------------------|
| NIP-01 | Base event format, relay subscription protocol  |
| NIP-10 | Reply threading via e-tag markers               |
| NIP-11 | Relay capability advertisement                  |
| NIP-17 | Private DMs (Kind 14 rumor)                     |
| NIP-28 | Public channels (Kind 40/41/42)                 |
| NIP-44 | Encryption for DMs (ChaCha20 + HMAC-SHA256)     |
| NIP-59 | Gift wrap for private message delivery          |
| NIP-65 | User relay list metadata                        |

### Explicitly NOT Used

| NIP    | Why excluded                                                  |
|--------|---------------------------------------------------------------|
| NIP-09 | Event deletion — intentionally excluded. Feed freedom is a core principle. Never implement. |
| NIP-04 | Legacy DM encryption — superseded by NIP-17 + NIP-44          |

---

## Data Layer

### NoteModel (Isar Collection)

File: `lib/data/models/note_model.dart`

```dart
@Collection(ignore: {'copyWith'})
@Name('Note')
class NoteModel {
  Id id = Isar.autoIncrement;          // Isar internal integer primary key

  @Index(unique: true)
  late String eventId;                 // Nostr event ID (SHA256 hex)

  late String sig;                     // Schnorr signature
  late String authorPubkey;            // Author's secp256k1 pubkey

  late String content;                 // Note text content

  @Enumerated(EnumType.name)
  late NoteType type;                  // text | image | link | reference

  late List<String> eTagRefs;          // All e-tag event IDs (graph edges + mentions)

  @Index()
  String? rootEventId;                 // NIP-10 "root" marker — null = top-level note

  @Index()
  String? replyToEventId;              // NIP-10 "reply" marker — null = top-level note

  late List<String> pTagRefs;          // p-tag pubkeys (user mentions)
  late List<String> tTags;             // t-tag topics (graph topic nodes)

  late int cachedReactionCount;        // Denormalized reaction count (updated by SyncEngine)
  late DateTime created;               // Event created_at as DateTime
  late bool isSeen;                    // Scroll-position tracking (user has seen this note)
}
```

**Critical field notes:**
- `id` is the Isar autoincrement integer — used only by Isar internally. The Nostr identity is `eventId`.
- `rootEventId` and `replyToEventId` are the NIP-10 threading fields. Both null = top-level feed note.
- `eTagRefs` stores ALL e-tag event IDs. `rootEventId`/`replyToEventId` are extracted separately during parsing.
- `cachedReactionCount` is denormalized for query performance; updated by the SyncEngine when Kind 7 reactions arrive.
- `isSeen` drives the unread tracking for the Vishnu feed (same `lastReadEventId` pattern as channels/DMs).

### NoteType Enum

File: `lib/core/enum/note_type.dart`

```dart
enum NoteType { text, image, link, reference }
```

Stored as `EnumType.name` in Isar (string representation). `reference` = this note is primarily a knowledge graph link (contains an `e` tag reference). The enum is in `core/` because it is used by both `data/` and `domain/` layers.

### NoteEntity (Domain — Freezed)

File: `lib/domain/entities/note/note_entity.dart`

```dart
@freezed
abstract class NoteEntity with _$NoteEntity {
  const factory NoteEntity({
    required String id,           // = NoteModel.eventId
    required String sig,
    required String authorPubkey,
    required String content,
    required NoteType type,
    required List<String> eTagRefs,
    required List<String> pTagRefs,
    required List<String> tTags,
    required int cachedReactionCount,
    required DateTime created,
    required bool isSeen,
  }) = _NoteEntity;
}
```

Note: `rootEventId` and `replyToEventId` are intentionally absent from the domain entity. The domain works with `eTagRefs` for graph operations. If threading info is needed in a use case, it must be derived or passed through an input.

### NoteRepository Interface

File: `lib/domain/repositories/note_repository.dart`

```dart
abstract class NoteRepository {
  Future<Either<Failure, List<NoteEntity>>> getFeed({required int limit, DateTime? before});
  Future<Either<Failure, NoteEntity>> getNoteById(String eventId);
  Future<Either<Failure, List<NoteEntity>>> getReplies(String eventId);
  Future<Either<Failure, NoteEntity>> saveNote(NoteEntity note);
  Future<Either<Failure, Unit>> markAsSeen(String eventId);
  Future<Either<Failure, Unit>> updateReactionCount(String eventId, int count);
}
```

### NoteRepositoryImpl

File: `lib/data/repositories/note_repository_impl.dart`

Annotated `@Injectable(as: NoteRepository)`. Receives `Isar` via constructor injection. Pagination uses `createdLessThan(before)` cursor. All writes use `isar.writeTxn()`. Duplicate notes are silently ignored (idempotent `saveNote`).

### Failure Types

File: `lib/core/error/failures.dart`

```dart
@freezed
class Failure with _$Failure {
  const factory Failure.failure(final String message) = _Failure;
  const factory Failure.notFoundFailure(final String message) = _NotFoundFailure;
  const factory Failure.errorFailure(final String message) = _ErrorFailure;
}
```

### UseCase Base Classes

File: `lib/core/usecases/usecase.dart`

```dart
abstract class UseCase<T, P> extends BaseUseCase<T> {
  Future<T> call(P input, {bool cached = false});
}

abstract class NoParamsUseCase<T> extends BaseUseCase<T> {
  Future<T> call();
}
```

All use cases extend one of these. `T` is typically `Either<Failure, SomeEntity>`.

### Generated Files — Do Not Edit Manually

| File                               | Generator                   | What it does                          |
|------------------------------------|------------------------------|---------------------------------------|
| `note_model.g.dart`                | `isar_community_generator`   | Isar schema, collection accessors, indexes |
| `note_entity.freezed.dart`         | `freezed`                    | Immutable value class implementation  |
| `failures.freezed.dart`            | `freezed`                    | Failure union type implementation     |

Regenerate all generated files with:
```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

**Build order matters** (`pubspec.yaml` enforces this via `global_options`): `freezed` runs before `isar_generator` so generated freezed classes exist when Isar generates schema accessors.

---

## Package Versions (Critical — Do Not Upgrade Without Checking)

| Package                        | Version     | Why This Exact Version                                         |
|--------------------------------|-------------|----------------------------------------------------------------|
| `isar_community`               | `3.3.2`     | NOT `isar` 3.x — the original isar package is incompatible with Dart 3.x. Use `isar_community` fork. |
| `isar_community_flutter_libs`  | `3.3.2`     | Must match `isar_community` exactly                            |
| `isar_community_generator`     | `3.3.2`     | Must match `isar_community` exactly (dev dependency)           |
| `freezed`                      | `^3.0.0`    | NOT 2.x — v3 requires `abstract class` pattern for `@freezed` entities |
| `freezed_annotation`           | `^3.0.0`    | Must match `freezed` major version                             |
| `build_runner`                 | `^2.13.0`   | Needs `build_runner_core` 9.x compatibility                    |
| `injectable`                   | `^2.3.2`    | DI annotation framework                                        |
| `injectable_generator`         | `^2.4.1`    | DI code generator (dev dependency)                             |
| `dartz`                        | `^0.10.1`   | Functional Either/Option types                                 |
| `flutter_bloc`                 | `^8.1.3`    | BLoC state management                                          |
| `bloc_concurrency`             | `^0.2.4`    | Event transformers (droppable, sequential, restartable)        |
| Dart SDK                       | `>=3.2.4 <4.0.0` | Minimum Dart 3.2.4                                        |

**Isar import**: Always use `package:isar_community/isar.dart`. Never `package:isar/isar.dart`.

---

## Modules / Features

### Vishnu — Feed

The main chronological feed of Kind 1 notes.

- Displays top-level notes (`rootEventId == null`) newest-first.
- Pagination via `createdLessThan(before)` cursor on `NoteModel.created`.
- Unread tracking: `FeedReadStateModel` (Isar `@collection`, single row) stores `lastReadEventId` and `lastReadTimestamp`. As the user scrolls, the BLoC receives the last visible event ID via `UpdateFeedReadPositionEvent` and persists it.
- On next app launch, feed resumes from `lastReadEventId` position (Telegram-style "you are here" marker).
- No ranking algorithm in v1. Pure chronological.

**BLoC**: `VishnuFeedBloc`
- `LoadFeedEvent` → calls `GetFeedUseCase` → emits feed state
- `LoadMoreFeedEvent` → pagination with `before` cursor
- `RefreshFeedEvent` → reload from top
- `SaveNoteEvent` → calls `SaveNoteUseCase`
- `UpdateFeedReadPositionEvent` → updates `FeedReadStateModel`

### Brahma — Create Note

Note composition and publishing.

- Supports all `NoteType` values: `text`, `image`, `link`, `reference`.
- Image upload via Blossom protocol (Kind 24242 auth token, PUT to user's Blossom server, `imeta` tag in event).
- Reference picker allows selecting existing notes to create graph edges (`e` tags with `mention` marker).
- Graph preview shown before publishing (using `BuildNoteGraphUseCase`).
- Signs note with user's private key. Broadcasts via EmbeddedServer's EventQueue.
- Draft support via `DraftNoteRepository` (local only, not published to relay).

**BLoC**: `BrahmaCreateBloc`
- `UpdateContentEvent`, `AddReferenceEvent`, `RemoveReferenceEvent`
- `AttachImageEvent` → Blossom upload flow
- `TagUserEvent` → adds `p` tag
- `PreviewReferenceGraphEvent` → shows graph before submit
- `SubmitNoteEvent` → sign + enqueue for relay publishing

### Shiv — AI Assistant

On-device AI assistant using GraphRAG over the user's saved notes.

**RAG pipeline (standard vector phase):**
1. User saves a note → `EmbeddingService` converts content to a float vector (`List<double>`, 384 or 768 dimensions) → stored in `SavedNoteModel.embedding` in Isar.
2. User asks Shiv a question → same embedding model converts question to vector.
3. `VectorSearchService` loads all saved note embeddings from Isar into memory → computes cosine similarity → returns top-K `ScoredNote` objects.
4. `PromptBuilder` assembles prompt: system prompt + top-K note contents + user question.
5. `AIModelRunner` (wrapping `FlutterGemmaPlugin`) streams the answer token-by-token via `getResponseStream()`.

**GraphRAG phase (on top of vector):**
- After vector retrieval, BFS-traverse the note graph from seed notes: follow `eTagRefs` edges, collect same-`tTags` notes, pull reply chains.
- Verbalize the subgraph into the prompt context before sending to Gemma.
- Enables multi-hop queries ("find notes connected to this concept") and global queries ("what are my main interests?").

**Why only saved notes:** Regular notes are cleaned up after 7 days by `CleanupManager`. Saved notes are the user's explicit personal knowledge base. Embeddings are only generated on save — not for every note seen.

**Models:**
- Embedding model: `all-MiniLM-L6-v2` (~80MB) or `nomic-embed-text` (~270MB)
- LLM: Gemma 2B (~1.5GB) or Gemma 7B (~5GB) via `flutter_gemma`

**BLoC**: `ShivAIBloc`
- `SendMessageEvent` → RAG pipeline → streaming state updates
- `SelectModelEvent` → `SelectAIModelUseCase`
- `LoadConversationsEvent`, `CreateConversationEvent`, `DeleteConversationEvent`

### Channels — Public Chat (NIP-28)

- Kind 40 = channel creation. The `event.id` of the Kind 40 event **is** the channel ID forever. Never generate a separate channel ID.
- Kind 42 = channel message. Tagged with `["e", kind40_id, relay_url, "root"]`.
- Channel metadata updates via Kind 41 (creator only).
- Unread tracking via `ChannelReadStateModel` (same `lastReadEventId` pattern as feed).
- `DrawerBloc` manages channel list and DM list for the app drawer.
- No private channels in MVP. NIP-28 is public-only.

### DMs — Direct Messages (NIP-17)

- Kind 14 = the actual message content (called a "rumor" — it is UNSIGNED).
- Three-layer encryption for full privacy:
  - Kind 14 (rumor) → NIP-44 encrypt with sender privkey + recipient pubkey → Kind 13 (seal, signed) → NIP-44 encrypt with ephemeral privkey + recipient pubkey → Kind 1059 (gift wrap, published to relay).
- Only `["p", recipient_pubkey]` is visible on the relay in the gift wrap.
- Subscription filter: `{"kinds": [1059], "#p": ["my_pubkey"]}`.
- Unread tracking via `DMReadStateModel` (same `lastReadEventId` pattern).
- Full 3-layer encryption is future scope for MVP. MVP uses Kind 14 with basic structure.

---

## EmbeddedServer (External — Do Not Modify)

The EmbeddedServer runs in a Dart isolate and is maintained by a separate team. It is the sync engine between Isar and Nostr relays.

```
EmbeddedServer
  ├── RelayConnector — manages WebSocket connections to multiple relays
  ├── SyncEngine — processIncoming(NostrEvent) → Isar; flushQueue() → relays
  ├── EventQueue — pending outgoing events with offline support
  └── CleanupManager — retention policy enforcement
```

**Relay subscriptions UNIUN opens:**
```dart
// Feed
{"kinds": [1], "authors": [...followedPubkeys], "limit": 50}

// Channel messages
{"kinds": [40, 41, 42], "#e": [channelId], "limit": 100}

// DMs (gift wraps addressed to this user)
{"kinds": [1059], "#p": [myPubkey]}

// Profile metadata
{"kinds": [0], "authors": [pubkey]}
```

**Isar retention policy (enforced by CleanupManager):**

| Note type                          | Retention              |
|------------------------------------|------------------------|
| Kind 1 (regular, not saved)        | 7 days (configurable)  |
| Kind 1 (saved = true)              | Forever                |
| Kind 1 (own note, own pubkey)      | Forever                |
| Kind 42 (channel message)          | 3 days (configurable)  |
| Kind 14 (DM content)               | Forever                |
| Kind 0 (profiles)                  | 30 days, refresh on view|
| AI conversations/messages          | Forever                |

On-demand fetch: if a note is referenced but not in Isar, `SyncEngine.fetchById(eventId)` queries the relay with `{"ids": [eventId]}`.

---

## BLoC Pattern

```
User action (tap, scroll, type)
    ↓
UI sends Event to BLoC: context.read<SomeBloc>().add(SomeEvent(...))
    ↓
BLoC handler calls use case: final result = await useCase.call(input)
    ↓
Use case calls repository: return await repository.doSomething(...)
    ↓
Repository reads/writes Isar, returns Either<Failure, Entity>
    ↓
BLoC folds the Either, emits new State
    ↓
UI rebuilds via BlocBuilder<SomeBloc, SomeState>
```

**Named BLoCs per module:**
- `VishnuFeedBloc` — feed
- `BrahmaCreateBloc` — note creation
- `ShivAIBloc` — AI assistant
- `GraphBloc` — knowledge graph view
- `DrawerBloc` — channels + DMs drawer
- `SavedNotesBloc` — saved notes management

**Event transformer usage (bloc_concurrency):**
- Use `droppable()` for search/query events (ignore new events while processing).
- Use `sequential()` for write operations (process in order).
- Use `restartable()` for user typing/input (cancel previous, start new).

---

## Dependency Injection

Uses `injectable` + `get_it`.

| Annotation                      | When to use                                        |
|---------------------------------|----------------------------------------------------|
| `@singleton`                    | `Isar` instance — one per app lifetime             |
| `@injectable`                   | Repository implementations, BLoC instances         |
| `@lazySingleton`                | Use cases — created on first access                |
| `@Injectable(as: Interface)`    | Repository impl registered as its interface        |

After adding any `@injectable`, `@singleton`, or `@lazySingleton` annotation, regenerate:
```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

---

## Blossom Media Upload

Blossom is a content-addressed HTTP blob store. File identity = SHA-256 hash. Same file on any Blossom server = same URL.

Upload flow:
1. User selects image → app computes SHA-256 locally.
2. `HEAD /<sha256>` on user's Blossom server — check if already uploaded.
3. If not found: sign Kind 24242 auth event (t=upload, x=sha256, expiration=+10min), `PUT /upload` with auth header + file bytes.
4. Receive blob descriptor: `{url, sha256, size, type}`.
5. Embed in note: `content` gets the URL, `tags` gets `["imeta", "url ...", "m image/jpeg", "x <sha256>", "dim WxH"]`.

User's Blossom servers declared in Kind 10063 event.

---

## Current Implementation Status

### Done

| File | Description |
|------|-------------|
| `lib/core/enum/note_type.dart` | `NoteType` enum: `text`, `image`, `link`, `reference` |
| `lib/data/models/note_model.dart` | `NoteModel` Isar collection + `toDomain()` extension |
| `lib/data/models/note_model.g.dart` | Generated Isar schema (do not edit) |
| `lib/domain/entities/note/note_entity.dart` | `NoteEntity` freezed domain entity |
| `lib/domain/entities/note/note_entity.freezed.dart` | Generated freezed implementation (do not edit) |
| `lib/domain/repositories/note_repository.dart` | `NoteRepository` abstract interface |
| `lib/data/repositories/note_repository_impl.dart` | `NoteRepositoryImpl` with Isar queries |
| `lib/core/error/failures.dart` | `Failure` freezed union type |
| `lib/core/usecases/usecase.dart` | `UseCase<T,P>` and `NoParamsUseCase<T>` base classes |

### Next Steps (in build order)

1. `NostrProfile` model (Kind 0) + entity + repository interface + repository impl
2. `GetFeedUseCase` — wraps `NoteRepository.getFeed()`
3. `SaveNoteUseCase` — wraps `NoteRepository.saveNote()`
4. `GetRepliesUseCase` — wraps `NoteRepository.getReplies()`
5. `VishnuFeedBloc` — feed state management
6. Feed UI: `NoteCard` widget + `VishnuFeedPage`
7. EmbeddedServer integration (separate team handoff)
8. `BrahmaCreateBloc` + compose UI
9. Channels (DrawerBloc + ChannelReadStateModel)
10. Shiv AI (EmbeddingService + ShivAIBloc + flutter_gemma integration)

---

## Rules for AI Assistants

### DO

- Work one model/entity/feature at a time. Do not speculatively scaffold future features.
- Use `isar_community` package (import `package:isar_community/isar.dart`). Never `isar`.
- Use `abstract class` for all `@freezed` domain entities (Freezed 3.x requirement):
  ```dart
  @freezed
  abstract class SomeEntity with _$SomeEntity {
    const factory SomeEntity({...}) = _SomeEntity;
  }
  ```
- Keep Isar models mutable (`late` fields, no `@freezed`).
- Keep domain entities immutable (`@freezed abstract class`).
- Derive note role from `rootEventId`/`replyToEventId` — never add a separate `isReply`, `isRoot`, `role`, or `noteRole` field to any model or entity.
- Wrap all Isar writes in `isar.writeTxn(() async { ... })`.
- Return `Either<Failure, T>` from all repository methods and use cases.
- Use `Failure.errorFailure(e.toString())` in catch blocks.
- Check for existing records before inserting (idempotent saves).
- Annotate repository implementations with `@Injectable(as: RepositoryInterface)`.
- Run `build_runner` after any change to `@freezed`, `@collection`, or `@injectable` annotated classes.

### NEVER DO

- Add `deleted`, `isDeleted`, `softDeleted`, or any deletion-related field to any model or entity.
- Implement or reference NIP-09 (Kind 5 deletion events).
- Import `package:isar_community/isar.dart` or any Isar type in the domain layer.
- Import Flutter widgets (`package:flutter/material.dart`, etc.) in the domain layer.
- Import Flutter widgets in the data layer.
- Create use cases for operations that do not have a concrete repository method backing them yet.
- Add `Post`, `Comment`, `Thread`, `Upvote`, or any Reddit-style model — everything is a `Note`.
- Add a `PostModel`, `CommentModel`, or any model that does not map to a Nostr event kind.
- Modify generated files (`*.g.dart`, `*.freezed.dart`) — they will be overwritten by `build_runner`.
- Use the old `isar` package — use `isar_community` only.
- Use Freezed 2.x `class` pattern — use Freezed 3.x `abstract class` pattern.
- Access Isar directly from BLoC or use cases — go through the repository interface.
- Hardcode Nostr event IDs or relay URLs.
- Touch EmbeddedServer internals — that is a separate team's concern.
- Push ranking/algorithm logic into the feed in v1 — chronological only.
- Add any form of cloud AI call — Shiv is entirely on-device.

---

## Common Code Patterns

### Adding a New Isar Model

```dart
// lib/data/models/some_model.dart
import 'package:isar_community/isar.dart';

part 'some_model.g.dart';

@Collection(ignore: {'copyWith'})
@Name('SomeName')  // explicit Isar collection name
class SomeModel {
  Id id = Isar.autoIncrement;

  @Index(unique: true)
  late String eventId;

  // ... other fields
}

extension SomeModelExtension on SomeModel {
  SomeEntity toDomain() => SomeEntity(/* map fields */);
}
```

### Adding a New Domain Entity

```dart
// lib/domain/entities/some/some_entity.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'some_entity.freezed.dart';

@freezed
abstract class SomeEntity with _$SomeEntity {
  const factory SomeEntity({
    required String id,
    // ...
  }) = _SomeEntity;
}
```

### Adding a New Repository Interface

```dart
// lib/domain/repositories/some_repository.dart
import 'package:dartz/dartz.dart';
import 'package:uniun/core/error/failures.dart';
import 'package:uniun/domain/entities/some/some_entity.dart';

abstract class SomeRepository {
  Future<Either<Failure, SomeEntity>> getSomething(String id);
}
```

### Adding a New Repository Implementation

```dart
// lib/data/repositories/some_repository_impl.dart
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:isar_community/isar.dart';
import 'package:uniun/core/error/failures.dart';
import 'package:uniun/data/models/some_model.dart';
import 'package:uniun/domain/entities/some/some_entity.dart';
import 'package:uniun/domain/repositories/some_repository.dart';

@Injectable(as: SomeRepository)
class SomeRepositoryImpl extends SomeRepository {
  final Isar isar;
  SomeRepositoryImpl({required this.isar});

  @override
  Future<Either<Failure, SomeEntity>> getSomething(String id) async {
    try {
      // ... Isar query
      return Right(result.toDomain());
    } catch (e) {
      return Left(Failure.errorFailure(e.toString()));
    }
  }
}
```

### Adding a New Use Case

```dart
// lib/domain/usecases/get_something_usecase.dart
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:uniun/core/error/failures.dart';
import 'package:uniun/core/usecases/usecase.dart';
import 'package:uniun/domain/entities/some/some_entity.dart';
import 'package:uniun/domain/repositories/some_repository.dart';

@lazySingleton
class GetSomethingUseCase extends UseCase<Either<Failure, SomeEntity>, String> {
  final SomeRepository repository;
  const GetSomethingUseCase(this.repository);

  @override
  Future<Either<Failure, SomeEntity>> call(String input, {bool cached = false}) {
    return repository.getSomething(input);
  }
}
```

---

## Folder Structure Reference

```
lib/
├── main.dart
├── core/
│   ├── api/                      # HTTP client (Dio) — legacy from old Reddit architecture
│   ├── bloc/                     # Global BLoC states (auth, theme)
│   ├── enum/
│   │   └── note_type.dart        # NoteType enum — text | image | link | reference
│   ├── error/
│   │   ├── failures.dart         # Failure freezed union
│   │   └── failures.freezed.dart # Generated
│   ├── theme/                    # App theming
│   ├── usecases/
│   │   └── usecase.dart          # UseCase<T,P> and NoParamsUseCase<T> base classes
│   └── extensions/
│
├── data/
│   ├── models/
│   │   ├── note_model.dart       # NoteModel Isar collection
│   │   └── note_model.g.dart     # Generated Isar schema
│   └── repositories/
│       └── note_repository_impl.dart  # NoteRepositoryImpl
│
├── domain/
│   ├── entities/
│   │   └── note/
│   │       ├── note_entity.dart         # NoteEntity (freezed)
│   │       └── note_entity.freezed.dart # Generated
│   ├── repositories/
│   │   └── note_repository.dart   # NoteRepository interface
│   ├── usecases/                  # (next: GetFeedUseCase, SaveNoteUseCase, etc.)
│   └── inputs/                    # Input parameter classes for use cases
│
├── l10n/                          # Auto-generated localization files
│
└── [feature folders]/             # search/, community/, posts/, user/
    ├── bloc/                      # BLoC, Event, State
    ├── pages/                     # UI pages
    └── widgets/                   # UI components
```

---

## Frequently Made Mistakes

1. **Using `class` instead of `abstract class` with `@freezed`** — Freezed 3.x requires `abstract class`. This causes a compile error.

2. **Importing `package:isar/isar.dart`** — The project uses `isar_community`. The original `isar` package will not resolve.

3. **Adding a `deleted` field** — Do not do this. Ever. Not even temporarily. Feed Freedom.

4. **Skipping `build_runner`** — After any change to a `@freezed`, `@Collection`, or `@injectable` class, you MUST run `flutter pub run build_runner build --delete-conflicting-outputs`. The generated files will be out of sync otherwise.

5. **Creating Post/Comment models** — There are no posts or comments. There are only Notes (Kind 1 events). If it's user-created content, it's a Note.

6. **Accessing Isar from a use case or BLoC** — Use cases and BLoC must not import or use Isar directly. Go through the repository interface.

7. **Forgetting `writeTxn`** — All Isar mutations (put, delete) must be inside `isar.writeTxn(() async { ... })`. Reads do not need a transaction.

8. **NIP-10 field confusion** — `eTagRefs` holds ALL e-tag event IDs. `rootEventId` is specifically the e-tag with `"root"` marker. `replyToEventId` is specifically the e-tag with `"reply"` marker. They are not redundant — `eTagRefs` includes all of them plus `"mention"` tags.
