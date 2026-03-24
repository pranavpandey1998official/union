import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uniun/core/enum/note_type.dart';

part 'note_entity.freezed.dart';

@freezed
abstract class NoteEntity with _$NoteEntity {
  const factory NoteEntity({
    required String id,
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
