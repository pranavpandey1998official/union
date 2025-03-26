import 'package:uniun/core/models/post_view_media.dart';
import 'package:uniun/domain/entities/comment/comment_entity.dart';
import 'package:uniun/domain/entities/community/community_entity.dart';
import 'package:uniun/domain/entities/post/post_entity.dart';
import 'package:uniun/domain/entities/user/user_entity.dart';
import 'package:uniun/search/bloc/search_bloc.dart';
import 'package:uniun/search/utils/search_type.dart';

/// Checks whether there are any results for the current given [searchType] in the [searchState] or the given [searchResponse].
bool searchIsEmpty(SearchType searchType, {SearchState? searchState, /*SearchResponse? searchResponse*/}) {
  assert(searchState != null);

  final List<CommunityEntity>? communities = searchState?.communities;
  final List<UserEntity>? users = searchState?.users;
  final List<CommentEntity>? comments = searchState?.comments;
  final List<PostViewMedia>? posts = searchState?.posts;

  return switch (searchType) {
    SearchType.communities => communities?.isNotEmpty != true,
    SearchType.users => users?.isNotEmpty != true,
    SearchType.comments => comments?.isNotEmpty != true,
    SearchType.posts => posts?.isNotEmpty != true,
    SearchType.url => posts?.isNotEmpty != true,
    _ => false,
  };
}