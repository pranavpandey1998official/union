
import 'package:uniun/core/models/media.dart';
import 'package:uniun/domain/entities/post/post_entity.dart';

class PostViewMedia {
  PostEntity postEntity;
  List<Media> media;

  PostViewMedia({
    required this.postEntity,
    this.media = const [],
  });
}
