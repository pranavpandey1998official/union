import 'package:isar_community/isar.dart';
import 'package:uniun/core/enum/note_type.dart';
import 'package:uniun/domain/entities/note/note_entity.dart';

part 'note_model.g.dart';

@Collection(ignore: {'copyWith'})
@Name('Note')
class NoteModel {
  Id id = Isar.autoIncrement;

  @Index(unique: true)
  late String eventId;

  late String sig;
  late String authorPubkey;
  late String content;

  @Enumerated(EnumType.name)
  late NoteType type;

  late List<String> eTagRefs;

  /// NIP-10: event ID of the thread root (["e", id, relay, "root"])
  /// null = this note IS the root (top-level feed note)
  @Index()
  String? rootEventId;

  /// NIP-10: event ID of the direct parent (["e", id, relay, "reply"])
  /// null = top-level note
  @Index()
  String? replyToEventId;

  late List<String> pTagRefs;
  late List<String> tTags;

  late int cachedReactionCount;
  late DateTime created;
  late bool isSeen;

  NoteModel({
    required this.eventId,
    required this.sig,
    required this.authorPubkey,
    required this.content,
    required this.type,
    required this.eTagRefs,
    this.rootEventId,
    this.replyToEventId,
    required this.pTagRefs,
    required this.tTags,
    required this.cachedReactionCount,
    required this.created,
    required this.isSeen,
  });
}

extension NoteModelExtension on NoteModel {
  NoteEntity toDomain() => NoteEntity(
        id: eventId,
        sig: sig,
        authorPubkey: authorPubkey,
        content: content,
        type: type,
        eTagRefs: eTagRefs,
        pTagRefs: pTagRefs,
        tTags: tTags,
        cachedReactionCount: cachedReactionCount,
        created: created,
        isSeen: isSeen,
      );
}
