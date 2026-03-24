import 'package:dartz/dartz.dart';
import 'package:uniun/core/error/failures.dart';
import 'package:uniun/domain/entities/note/note_entity.dart';

abstract class NoteRepository {
  /// Fetch notes from local cache (feed — latest first)
  Future<Either<Failure, List<NoteEntity>>> getFeed({
    required int limit,
    DateTime? before,
  });

  /// Get a single note by Nostr event ID
  Future<Either<Failure, NoteEntity>> getNoteById(String eventId);

  /// Get all notes that reference a given note (reply thread)
  Future<Either<Failure, List<NoteEntity>>> getReplies(String eventId);

  /// Persist a note received from a relay
  Future<Either<Failure, NoteEntity>> saveNote(NoteEntity note);

  /// Mark a note as seen (updates isSeen flag)
  Future<Either<Failure, Unit>> markAsSeen(String eventId);

  /// Update the cached reaction count for a note
  Future<Either<Failure, Unit>> updateReactionCount(String eventId, int count);
}
