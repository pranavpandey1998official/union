import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:isar_community/isar.dart';
import 'package:uniun/core/error/failures.dart';
import 'package:uniun/data/models/note_model.dart';
import 'package:uniun/domain/entities/note/note_entity.dart';
import 'package:uniun/domain/repositories/note_repository.dart';

@Injectable(as: NoteRepository)
class NoteRepositoryImpl extends NoteRepository {
  final Isar isar;

  NoteRepositoryImpl({required this.isar});

  @override
  Future<Either<Failure, List<NoteEntity>>> getFeed({
    required int limit,
    DateTime? before,
  }) async {
    try {
      if (before != null) {
        final notes = await isar.noteModels
            .filter()
            .createdLessThan(before)
            .sortByCreatedDesc()
            .limit(limit)
            .findAll();
        return Right(notes.map((n) => n.toDomain()).toList());
      }
      final notes = await isar.noteModels
          .where()
          .anyId()
          .sortByCreatedDesc()
          .limit(limit)
          .findAll();
      return Right(notes.map((n) => n.toDomain()).toList());
    } catch (e) {
      return Left(Failure.errorFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, NoteEntity>> getNoteById(String eventId) async {
    try {
      final note = await isar.noteModels
          .where()
          .eventIdEqualTo(eventId)
          .findFirst();
      if (note == null) {
        return const Left(Failure.errorFailure('Note not found'));
      }
      return Right(note.toDomain());
    } catch (e) {
      return Left(Failure.errorFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<NoteEntity>>> getReplies(String eventId) async {
    try {
      final replies = await isar.noteModels
          .where()
          .filter()
          .eTagRefsElementEqualTo(eventId)
          .sortByCreated()
          .findAll();
      return Right(replies.map((n) => n.toDomain()).toList());
    } catch (e) {
      return Left(Failure.errorFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, NoteEntity>> saveNote(NoteEntity note) async {
    try {
      final existing = await isar.noteModels
          .where()
          .eventIdEqualTo(note.id)
          .findFirst();

      if (existing != null) {
        return Right(existing.toDomain());
      }

      final model = NoteModel(
        eventId: note.id,
        sig: note.sig,
        authorPubkey: note.authorPubkey,
        content: note.content,
        type: note.type,
        eTagRefs: note.eTagRefs,
        pTagRefs: note.pTagRefs,
        tTags: note.tTags,
        cachedReactionCount: note.cachedReactionCount,
        created: note.created,
        isSeen: note.isSeen,
      );

      await isar.writeTxn(() async {
        await isar.noteModels.put(model);
      });

      return Right(model.toDomain());
    } catch (e) {
      return Left(Failure.errorFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> markAsSeen(String eventId) async {
    try {
      await isar.writeTxn(() async {
        final note = await isar.noteModels
            .where()
            .eventIdEqualTo(eventId)
            .findFirst();
        if (note != null) {
          note.isSeen = true;
          await isar.noteModels.put(note);
        }
      });
      return const Right(unit);
    } catch (e) {
      return Left(Failure.errorFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> updateReactionCount(
      String eventId, int count) async {
    try {
      await isar.writeTxn(() async {
        final note = await isar.noteModels
            .where()
            .eventIdEqualTo(eventId)
            .findFirst();
        if (note != null) {
          note.cachedReactionCount = count;
          await isar.noteModels.put(note);
        }
      });
      return const Right(unit);
    } catch (e) {
      return Left(Failure.errorFailure(e.toString()));
    }
  }
}
