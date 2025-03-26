import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:uniun/core/enum/local_settings.dart';
import 'package:uniun/core/enum/media_type.dart';
import 'package:uniun/core/models/media.dart';
import 'package:uniun/core/models/media_extension.dart';
import 'package:uniun/core/models/post_view_media.dart';
import 'package:uniun/core/preferences.dart';
import 'package:uniun/domain/entities/post/post_entity.dart';
import 'package:uniun/utils/image.dart';
import 'package:uniun/utils/links.dart';


// extension on MarkPostAsReadResponse {
//   bool isSuccess() {
//     return postView != null || success == true;
//   }
// }

/// Logic to mark post as read
// Future<bool> markPostAsRead(int postId, bool read) async {
//   Account? account = await fetchActiveProfileAccount();
//   LemmyApiV3 lemmy = LemmyClient.instance.lemmyApiV3;

//   if (account?.jwt == null) throw Exception('User not logged in');

//   MarkPostAsReadResponse markPostAsReadResponse = await lemmy.run(MarkPostAsRead(
//     auth: account!.jwt!,
//     postId: postId,
//     read: read,
//   ));

//   return markPostAsReadResponse.isSuccess();
// }

// Optimistically updates a post. This changes the value of the post locally, without sending the network request
// PostView optimisticallyVotePost(PostViewMedia postViewMedia, int voteType) {
//   int newScore = postViewMedia.postView.counts.score;
//   int? existingint = postViewMedia.postView.myVote;

//   switch (voteType) {
//     case -1:
//       existingint == 1 ? newScore -= 2 : newScore--;
//       break;
//     case 1:
//       existingint == -1 ? newScore += 2 : newScore++;
//       break;
//     case 0:
//       // Determine score from existing
//       if (existingint == -1) {
//         newScore++;
//       } else if (existingint == 1) {
//         newScore--;
//       }
//       break;
//   }

//   return postViewMedia.postView.copyWith(myVote: voteType, counts: postViewMedia.postView.counts.copyWith(score: newScore));
// }

// Optimistically saves a post. This changes the value of the post locally, without sending the network request
// PostView optimisticallySavePost(PostViewMedia postViewMedia, bool saved) {
//   return postViewMedia.postView.copyWith(saved: saved);
// }

// Optimistically marks a post as read/unread. This changes the value of the post locally, without sending the network request
// PostView optimisticallyReadPost(PostViewMedia postViewMedia, bool read) {
//   return postViewMedia.postView.copyWith(read: read);
// }

/// Logic to vote on a post
// Future<PostView> votePost(int postId, int score) async {
//   Account? account = await fetchActiveProfileAccount();
//   LemmyApiV3 lemmy = LemmyClient.instance.lemmyApiV3;

//   if (account?.jwt == null) throw Exception('User not logged in');

//   PostResponse postResponse = await lemmy.run(CreatePostLike(
//     auth: account!.jwt!,
//     postId: postId,
//     score: score,
//   ));

//   PostView updatedPostView = postResponse.postView;
//   return updatedPostView;
// }

/// Logic to save a post
// Future<PostView> savePost(int postId, bool save) async {
//   Account? account = await fetchActiveProfileAccount();
//   LemmyApiV3 lemmy = LemmyClient.instance.lemmyApiV3;

//   if (account?.jwt == null) throw Exception('User not logged in');

//   PostResponse postResponse = await lemmy.run(SavePost(
//     auth: account!.jwt!,
//     postId: postId,
//     save: save,
//   ));

//   PostView updatedPostView = postResponse.postView;
//   return updatedPostView;
// }

/// Parse a post with media
Future<List<PostViewMedia>> parsePostViews(List<PostEntity> postViews) async {
  SharedPreferences prefs = (await UserPreferences.instance).sharedPreferences;

  bool fetchImageDimensions = prefs.getBool(LocalSettings.showPostFullHeightImages.name) == true && prefs.getBool(LocalSettings.useCompactView.name) != true;
  bool edgeToEdgeImages = prefs.getBool(LocalSettings.showPostEdgeToEdgeImages.name) ?? false;
  bool tabletMode = prefs.getBool(LocalSettings.useTabletMode.name) ?? false;
  bool hideNsfwPosts = prefs.getBool(LocalSettings.hideNsfwPosts.name) ?? false;

  Iterable<Future<PostViewMedia>> postFutures =
      postViews.expand((post) => [if (!hideNsfwPosts || (!post.nsfw && hideNsfwPosts)) parsePostView(post, fetchImageDimensions, edgeToEdgeImages, tabletMode)]).toList();
  List<PostViewMedia> posts = await Future.wait(postFutures);

  return posts;
}

Future<PostViewMedia> parsePostView(PostEntity postEntity, bool fetchImageDimensions, bool edgeToEdgeImages, bool tabletMode) async {
  List<Media> media = [];
  String? url = postEntity.body;

  if (postEntity.type == PostType.TEXT) {
    // pass
  }
  if (url != null && isImageUrl(url)) {
    try {
      MediaType mediaType = MediaType.image;

      if (fetchImageDimensions) {
        Size result = await retrieveImageDimensions(imageUrl: url);
        Size size = MediaExtension.getScaledMediaSize(width: result.width, height: result.height, offset: edgeToEdgeImages ? 0 : 24, tabletMode: tabletMode);
        media.add(Media(mediaUrl: url, originalUrl: url, width: size.width, height: size.height, mediaType: mediaType));
      } else {
        media.add(Media(mediaUrl: url, originalUrl: url, mediaType: mediaType));
      }
    } catch (e) {
      // If it fails, fall back to a media type of link
      media.add(Media(originalUrl: url, mediaType: MediaType.link));
    }
  } else if (url != null) {
    if (fetchImageDimensions) {
      if (postEntity.thumbnailUrl?.isNotEmpty == true) {
        try {
          Size result = await retrieveImageDimensions(imageUrl: postEntity.thumbnailUrl!);
          Size size = MediaExtension.getScaledMediaSize(width: result.width, height: result.height, offset: edgeToEdgeImages ? 0 : 24, tabletMode: tabletMode);
          media.add(Media(
            mediaUrl: postEntity.thumbnailUrl!,
            mediaType: MediaType.link,
            originalUrl: url,
            width: size.width,
            height: size.height,
          ));
        } catch (e) {
          // If it fails, fall back to a media type of link
          media.add(Media(originalUrl: url, mediaType: MediaType.link));
        }
      } else {
        try {
          // For external links, attempt to fetch any media associated with it (image, title)
          LinkInfo linkInfo = await getLinkInfo(url);

          if (linkInfo.imageURL != null && linkInfo.imageURL!.isNotEmpty) {
            Size result = await retrieveImageDimensions(imageUrl: linkInfo.imageURL!);

            int mediaHeight = result.height.toInt();
            int mediaWidth = result.width.toInt();
            Size size = MediaExtension.getScaledMediaSize(width: mediaWidth, height: mediaHeight, offset: edgeToEdgeImages ? 0 : 24, tabletMode: tabletMode);
            media.add(Media(mediaUrl: linkInfo.imageURL!, mediaType: MediaType.link, originalUrl: url, height: size.height, width: size.width));
          } else {
            media.add(Media(mediaUrl: linkInfo.imageURL!, mediaType: MediaType.link, originalUrl: url));
          }
        } catch (e) {
          // Default back to a link
          media.add(Media(mediaType: MediaType.link, originalUrl: url));
        }
      }
    } else {
      if (postEntity.thumbnailUrl?.isNotEmpty == true) {
        media.add(Media(mediaUrl: postEntity.thumbnailUrl!, mediaType: MediaType.link, originalUrl: url));
      } else {
        media.add(Media(mediaType: MediaType.link, originalUrl: url));
      }
    }
  }

  return PostViewMedia(
    postEntity: postEntity,
    media: media,
  );
}
