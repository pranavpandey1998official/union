import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:html_unescape/html_unescape_small.dart';
import 'package:uniun/common/emuns/font_scale.dart';
import 'package:uniun/common/emuns/view_mode.dart';
import 'package:uniun/common/widgets/media_view.dart';
import 'package:uniun/community/widgets/post_card_type_badge.dart';
import 'package:uniun/core/bloc/thunder/thunder_bloc.dart';
import 'package:uniun/core/bloc/user/user_bloc.dart';
import 'package:uniun/core/enum/media_type.dart';
import 'package:uniun/core/models/post_view_media.dart';


class PostCardViewCompact extends StatelessWidget {
  final PostViewMedia postViewMedia;
  final bool communityMode;
  final bool isUserLoggedIn;
  final void Function({PostViewMedia? postViewMedia})? navigateToPost;
  final bool? indicateRead;

  const PostCardViewCompact({
    super.key,
    required this.postViewMedia,
    required this.communityMode,
    required this.isUserLoggedIn,
    this.navigateToPost,
    this.indicateRead,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final ThunderState state = context.watch<ThunderBloc>().state;

    bool showThumbnailPreviewOnRight = state.showThumbnailPreviewOnRight;
    bool showTextPostIndicator = state.showTextPostIndicator;
    bool indicateRead = this.indicateRead ?? state.dimReadPosts;

    // final showCommunitySubscription = (listingType == ListingType.all || listingType == ListingType.local) &&
    //     isUserLoggedIn &&
    //     context.read<AccountBloc>().state.subsciptions.map((subscription) => subscription.community.actorId).contains(postViewMedia.postEntity.community.actorId);

    final TextStyle? textStyleCommunityAndAuthor = theme.textTheme.bodyMedium?.copyWith(
      color: indicateRead && postViewMedia.postEntity.read ? theme.textTheme.bodyMedium?.color?.withOpacity(0.45) : theme.textTheme.bodyMedium?.color?.withOpacity(0.75),
    );

    final Color? readColor = indicateRead && postViewMedia.postEntity.read ? theme.textTheme.bodyMedium?.color?.withOpacity(0.45) : theme.textTheme.bodyMedium?.color?.withOpacity(0.90);
    final double textScaleFactor = state.titleFontSizeScale.textScaleFactor;

    final bool darkTheme = state.useDarkTheme;

    return Container(
      color: indicateRead && postViewMedia.postEntity.read ? theme.colorScheme.onBackground.withOpacity(darkTheme ? 0.05 : 0.075) : null,
      padding: const EdgeInsets.only(bottom: 8.0, top: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          !showThumbnailPreviewOnRight && (postViewMedia.media.isNotEmpty || showTextPostIndicator)
              ? ThumbnailPreview(
                  postViewMedia: postViewMedia,
                  navigateToPost: navigateToPost,
                  indicateRead: indicateRead,
                )
              : const SizedBox(width: 8.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text.rich(
                  TextSpan(
                    children: [
                      if (postViewMedia.postEntity.locked) ...[
                        WidgetSpan(
                          child: Icon(
                            Icons.lock,
                            color: indicateRead && postViewMedia.postEntity.read ? Colors.orange.shade900.withOpacity(0.55) : Colors.orange.shade900,
                            size: 15 * textScaleFactor,
                          ),
                        ),
                      ],
                      if (postViewMedia.postEntity.saved)
                        WidgetSpan(
                          child: Icon(
                            Icons.star_rounded,
                            color: indicateRead && postViewMedia.postEntity.read ? Colors.purple.withOpacity(0.55) : Colors.purple,
                            size: 17 * textScaleFactor,
                            semanticLabel: 'Saved',
                          ),
                        ),
                      if (postViewMedia.postEntity.deleted)
                        WidgetSpan(
                          child: Icon(
                            Icons.delete_rounded,
                            size: 16 * textScaleFactor,
                            color: indicateRead && postViewMedia.postEntity.read ? Colors.red.withOpacity(0.55) : Colors.red,
                          ),
                        ),
                      if (postViewMedia.postEntity.deleted ||
                          postViewMedia.postEntity.saved ||
                          postViewMedia.postEntity.locked)
                        const WidgetSpan(child: SizedBox(width: 3.5)),
                      TextSpan(
                        text: HtmlUnescape().convert(postViewMedia.postEntity.title ?? ''),
                        style: theme.textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.w600,
                          fontSize: MediaQuery.textScalerOf(context).scale(theme.textTheme.bodyMedium!.fontSize! * state.titleFontSizeScale.textScaleFactor),
                          color: (indicateRead && postViewMedia.postEntity.read ? theme.textTheme.bodyMedium?.color?.withOpacity(0.55) : null),
                        ),
                      ),
                    ],
                  ),
                  textScaler: TextScaler.noScaling,
                ),
                const SizedBox(height: 6.0),
                // PostCommunityAndAuthor(
                //   compactMode: true,
                //   showCommunityIcons: false,
                //   communityMode: communityMode,
                //   postEntity: postViewMedia.postEntity,
                //   textStyleCommunity: textStyleCommunityAndAuthor,
                //   textStyleAuthor: textStyleCommunityAndAuthor,
                //   showCommunitySubscription: showCommunitySubscription,
                // ),
                const SizedBox(height: 6.0),
                // PostCardMetaData(
                //   readColor: readColor,
                //   score: postViewMedia.postEntity.counts.score,
                //   voteType: postViewMedia.postEntity.myVote ?? 0,
                //   comments: postViewMedia.postEntity.counts.comments,
                //   unreadComments: postViewMedia.postEntity.unreadComments,
                //   hasBeenEdited: postViewMedia.postEntity.updated != null ? true : false,
                //   published: postViewMedia.postEntity.updated != null ? postViewMedia.postEntity.updated! : postViewMedia.postEntity.published,
                //   hostURL: postViewMedia.media.firstOrNull != null ? postViewMedia.media.first.originalUrl : null,
                // ),
              ],
            ),
          ),
          showThumbnailPreviewOnRight && (postViewMedia.media.isNotEmpty || showTextPostIndicator)
              ? ThumbnailPreview(
                  postViewMedia: postViewMedia,
                  navigateToPost: navigateToPost,
                  indicateRead: indicateRead,
                )
              : const SizedBox(width: 8.0),
        ],
      ),
    );
  }
}

/// Displays the thumbnail preview for the post. This can be text, media, or links.
class ThumbnailPreview extends StatelessWidget {
  /// The [PostViewMedia] to display the thumbnail preview for
  final PostViewMedia postViewMedia;

  /// The callback function to navigate to the post
  final void Function({PostViewMedia? postViewMedia})? navigateToPost;

  final bool? indicateRead;

  const ThumbnailPreview({
    super.key,
    required this.postViewMedia,
    required this.navigateToPost,
    this.indicateRead,
  });

  @override
  Widget build(BuildContext context) {
    final state = context.read<ThunderBloc>().state;
    final isUserLoggedIn = context.read<UserBloc>().state.isLoggedIn;

    final indicateRead = this.indicateRead ?? state.dimReadPosts;
    final hideNsfwPreviews = state.hideNsfwPreviews;
    final markPostReadOnMediaView = state.markPostReadOnMediaView;

    return ExcludeSemantics(
      child: Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 4),
            child: MediaView(
              scrapeMissingPreviews: state.scrapeMissingPreviews,
              postView: postViewMedia,
              showFullHeightImages: false,
              hideNsfwPreviews: hideNsfwPreviews,
              markPostReadOnMediaView: markPostReadOnMediaView,
              viewMode: ViewMode.compact,
              isUserLoggedIn: isUserLoggedIn,
              navigateToPost: navigateToPost,
              read: indicateRead && postViewMedia.postEntity.read,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 6, bottom: 0),
            child: TypeBadge(
              mediaType: postViewMedia.media.firstOrNull?.mediaType ?? MediaType.text,
              dim: indicateRead && postViewMedia.postEntity.read,
            ),
          ),
        ],
      ),
    );
  }
}
