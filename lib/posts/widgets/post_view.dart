import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:expandable/expandable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:html_unescape/html_unescape_small.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uniun/common/emuns/view_mode.dart';
import 'package:uniun/common/widgets/common_markdown_body.dart';
import 'package:uniun/common/widgets/media_view.dart';
import 'package:uniun/common/widgets/scalable_text.dart';
import 'package:uniun/common/widgets/snackbar.dart';
import 'package:uniun/community/utils/post_card_action_helpers.dart';
import 'package:uniun/community/widgets/post_card_type_badge.dart';
import 'package:uniun/core/bloc/thunder/thunder_bloc.dart';
import 'package:uniun/core/bloc/user/user_bloc.dart';
import 'package:uniun/core/enum/media_type.dart';
import 'package:uniun/core/enum/post_body_view_type.dart';
import 'package:uniun/core/models/community_moderator_view.dart';
import 'package:uniun/core/models/post_view_media.dart';
import 'package:uniun/domain/entities/post/post_entity.dart';
import 'package:uniun/flutter_gen/gen_l10n/app_localizations.dart';
import 'package:uniun/utils/numbers.dart';


class PostSubview extends StatefulWidget {
  final PostViewMedia postViewMedia;
  final bool useDisplayNames;
  final int? selectedCommentId;
  final List<CommunityModeratorView>? moderators;
  final List<PostEntity>? crossPosts;

  /// The messenger key back to the post page
  final GlobalKey<ScaffoldMessengerState>? scaffoldMessengerKey;

  const PostSubview({
    super.key,
    this.selectedCommentId,
    required this.useDisplayNames,
    required this.postViewMedia,
    required this.moderators,
    required this.crossPosts,
    this.scaffoldMessengerKey,
  });

  @override
  State<PostSubview> createState() => _PostSubviewState();
}

class _PostSubviewState extends State<PostSubview> with SingleTickerProviderStateMixin {
  final ExpandableController expandableController = ExpandableController(initialExpanded: true);
  late PostViewMedia postViewMedia;

  @override
  void initState() {
    super.initState();

    postViewMedia = widget.postViewMedia;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context)!;

    final bool useAdvancedShareSheet = context.read<ThunderBloc>().state.useAdvancedShareSheet;
    final bool showCrossPosts = context.read<ThunderBloc>().state.showCrossPosts;

    PostEntity postEntity = postViewMedia.postEntity;
    PostEntity post = postEntity;

    final bool isUserLoggedIn = context.watch<UserBloc>().state.isLoggedIn;
    const bool downvotesEnabled = true;
    final ThunderState thunderState = context.read<ThunderBloc>().state;
    final UserState authState = context.watch<UserBloc>().state;

    final bool showScores = true;

    final bool scrapeMissingPreviews = thunderState.scrapeMissingPreviews;
    final bool hideNsfwPreviews = thunderState.hideNsfwPreviews;
    final bool markPostReadOnMediaView = thunderState.markPostReadOnMediaView;

    final bool isOwnPost = postEntity.creator?.id == context.read<UserBloc>().state.userId;

    final List<PostEntity> sortedCrossPosts = widget.crossPosts ?? [];

    return ExpandableNotifier(
      controller: expandableController,
      child: Padding(
        padding: const EdgeInsets.only(left: 12.0, right: 12.0, bottom: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children: [
                  if (thunderState.postBodyViewType == PostBodyViewType.condensed && !thunderState.showThumbnailPreviewOnRight && postViewMedia.media.isNotEmpty)
                    _getMediaPreview(thunderState, hideNsfwPreviews, markPostReadOnMediaView, isUserLoggedIn),
                  Expanded(
                    child: ScalableText(
                      HtmlUnescape().convert(post.title ?? ''),
                      fontScale: thunderState.titleFontSizeScale,
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                  if (thunderState.postBodyViewType == PostBodyViewType.condensed && thunderState.showThumbnailPreviewOnRight && postViewMedia.media.isNotEmpty)
                    _getMediaPreview(thunderState, hideNsfwPreviews, markPostReadOnMediaView, isUserLoggedIn),
                  if (thunderState.postBodyViewType != PostBodyViewType.condensed || postViewMedia.media.isEmpty)
                    IconButton(
                      visualDensity: VisualDensity.compact,
                      icon: Icon(
                        expandableController.expanded ? Icons.expand_less_rounded : Icons.expand_more_rounded,
                        semanticLabel: expandableController.expanded ? l10n.collapsePost : l10n.expandPost,
                      ),
                      onPressed: () {
                        expandableController.toggle();
                        setState(() {}); // Update the state to trigger the collapse/expand
                      },
                    ),
                ],
              ),
            ),
            if (thunderState.postBodyViewType != PostBodyViewType.condensed)
              Expandable(
                controller: expandableController,
                collapsed: Container(),
                expanded: MediaView(
                  scrapeMissingPreviews: scrapeMissingPreviews,
                  postView: widget.postViewMedia,
                  hideNsfwPreviews: hideNsfwPreviews,
                  markPostReadOnMediaView: markPostReadOnMediaView,
                  isUserLoggedIn: isUserLoggedIn,
                ),
              ),
            if (widget.postViewMedia.postEntity.body != null)
              Expandable(
                controller: expandableController,
                collapsed: PostBodyPreview(
                  post: post,
                  expandableController: expandableController,
                  onTapped: () => setState(() {}),
                ),
                expanded: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: CommonMarkdownBody(
                    body: post.body ?? '',
                  ),
                ),
              ),
            if (showCrossPosts && sortedCrossPosts.isNotEmpty)
              // CrossPosts(
              //   crossPosts: sortedCrossPosts,
              //   originalPost: widget.postViewMedia,
              //   scaffoldMessengerKey: widget.scaffoldMessengerKey,
              // ),
            const SizedBox(height: 16.0),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Wrap(
                alignment: WrapAlignment.spaceBetween,
                runSpacing: 8.0,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Tooltip(
                      //   excludeFromSemantics: true,
                      //   message:
                      //       '${generateUserFullName(context, postEntity.creator.name, fetchInstanceNameFromUrl(postEntity.creator.actorId) ?? '-')}${fetchUsernameDescriptor(isOwnPost, post, null, postEntity.creator, widget.moderators)}',
                      //   preferBelow: false,
                      //   child: Material(
                      //     color: isSpecialUser(context, isOwnPost, post, null, postEntity.creator, widget.moderators)
                      //         ? fetchUsernameColor(context, isOwnPost, post, null, postEntity.creator, widget.moderators) ?? theme.colorScheme.onBackground
                      //         : Colors.transparent,
                      //     borderRadius: isSpecialUser(context, isOwnPost, post, null, postEntity.creator, widget.moderators) ? const BorderRadius.all(Radius.elliptical(5, 5)) : null,
                      //     child: InkWell(
                      //       borderRadius: BorderRadius.circular(5),
                      //       onTap: () {
                      //         // navigateToUserPage(context, userId: postEntity.creator.id);
                      //       },
                      //       child: Padding(
                      //         padding: isSpecialUser(context, isOwnPost, post, null, postEntity.creator, widget.moderators) ? const EdgeInsets.symmetric(horizontal: 5.0) : EdgeInsets.zero,
                      //         child: Row(
                      //           mainAxisSize: MainAxisSize.min,
                      //           children: [
                      //             ScalableText(
                      //               postEntity.creator.displayName != null && widget.useDisplayNames ? postEntity.creator.displayName! : postEntity.creator.name,
                      //               fontScale: thunderState.metadataFontSizeScale,
                      //               style: theme.textTheme.bodyMedium?.copyWith(
                      //                 color: (isSpecialUser(context, isOwnPost, post, null, postEntity.creator, widget.moderators) ? theme.colorScheme.onBackground : theme.textTheme.bodyMedium?.color)
                      //                     ?.withOpacity(0.75),
                      //               ),
                      //             ),
                      //             if (isSpecialUser(context, isOwnPost, post, null, postEntity.creator, widget.moderators)) const SizedBox(width: 2.0),
                      //             if (isOwnPost)
                      //               Padding(
                      //                 padding: const EdgeInsets.only(left: 1),
                      //                 child: Icon(
                      //                   Icons.person,
                      //                   size: 15.0 * thunderState.metadataFontSizeScale.textScaleFactor,
                      //                   color: theme.colorScheme.onBackground,
                      //                 ),
                      //               ),
                      //             if (isAdmin(postEntity.creator))
                      //               Padding(
                      //                 padding: const EdgeInsets.only(left: 1),
                      //                 child: Icon(
                      //                   Thunder.shield_crown,
                      //                   size: 14.0 * thunderState.metadataFontSizeScale.textScaleFactor,
                      //                   color: theme.colorScheme.onBackground,
                      //                 ),
                      //               ),
                      //             if (isModerator(postEntity.creator, widget.moderators))
                      //               Padding(
                      //                 padding: const EdgeInsets.only(left: 1),
                      //                 child: Icon(
                      //                   Thunder.shield,
                      //                   size: 14.0 * thunderState.metadataFontSizeScale.textScaleFactor,
                      //                   color: theme.colorScheme.onBackground,
                      //                 ),
                      //               ),
                      //             if (isBot(postEntity.creator))
                      //               Padding(
                      //                 padding: const EdgeInsets.only(left: 1, right: 2),
                      //                 child: Icon(
                      //                   Thunder.robot,
                      //                   size: 13.0 * thunderState.metadataFontSizeScale.textScaleFactor,
                      //                   color: theme.colorScheme.onBackground,
                      //                 ),
                      //               ),
                      //           ],
                      //         ),
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      const SizedBox(width: 6.0),
                      ScalableText(
                        'to',
                        fontScale: thunderState.metadataFontSizeScale,
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: theme.textTheme.bodyMedium?.color?.withOpacity(0.4),
                        ),
                      ),
                      const SizedBox(width: 6.0),
                      InkWell(
                        borderRadius: BorderRadius.circular(5),
                        onTap: () {
                          // navigateToFeedPage(context, feedType: FeedType.community, communityId: postEntity.community.id);
                        },
                        child: Tooltip(
                          excludeFromSemantics: true,
                          message: 'TODO, comm_name', // generateCommunityFullName(context, postEntity.community.name, fetchInstanceNameFromUrl(postEntity.community.actorId) ?? 'N/A'),
                          preferBelow: false,
                          child: ScalableText(
                            'postEntity.community.name',
                            fontScale: thunderState.metadataFontSizeScale,
                            style: theme.textTheme.bodyMedium?.copyWith(
                              color: theme.textTheme.bodyMedium?.color?.withOpacity(0.75),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 6.0),
                  // PostViewMetaData(
                  //   comments: widget.postViewMedia.postEntity.counts.comments,
                  //   unreadComments: widget.postViewMedia.postEntity.unreadComments,
                  //   hasBeenEdited: widget.postViewMedia.postEntity.post.updated != null ? true : false,
                  //   published: post.published,
                  //   saved: postEntity.saved,
                  // ),
                ],
              ),
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  flex: 1,
                  child: TextButton(
                    onPressed: isUserLoggedIn
                        ? () {
                            HapticFeedback.mediumImpact();
                            // context.read<PostBloc>().add(VotePostEvent(postId: post.id, score: postEntity.myVote == 1 ? 0 : 1));
                          }
                        : null,
                    style: TextButton.styleFrom(
                      fixedSize: const Size.fromHeight(40),
                      foregroundColor: theme.textTheme.bodyMedium?.color, //postEntity.myVote == 1 ? theme.textTheme.bodyMedium?.color : Colors.orange,
                      padding: EdgeInsets.zero,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.arrow_upward,
                          semanticLabel: 'Upvote',// postEntity.myVote == 1 ? 'Upvoted' : 'Upvote',
                          color: theme.textTheme.bodyMedium?.color, // isUserLoggedIn ? (postEntity.myVote == 1 ? Colors.orange : theme.textTheme.bodyMedium?.color) : null,
                        ),
                        if (showScores) ...[
                          const SizedBox(width: 4.0),
                          Text(
                            formatNumberToK(widget.postViewMedia.postEntity.postVotes?.upVote ?? 0),
                            style: TextStyle(
                              color: theme.textTheme.bodyMedium?.color //isUserLoggedIn ? (postEntity.myVote == 1 ? Colors.orange : theme.textTheme.bodyMedium?.color) : null,
                            ),
                          ),
                        ]
                      ],
                    ),
                  ),
                ),
                if (downvotesEnabled)
                  Expanded(
                    flex: 1,
                    child: TextButton(
                      onPressed: isUserLoggedIn
                          ? () {
                              HapticFeedback.mediumImpact();
                              // context.read<PostBloc>().add(VotePostEvent(postId: post.id, score: postEntity.myVote == -1 ? 0 : -1));
                            }
                          : null,
                      style: TextButton.styleFrom(
                        fixedSize: const Size.fromHeight(40),
                        foregroundColor: theme.textTheme.bodyMedium?.color, // postEntity.myVote == -1 ? theme.textTheme.bodyMedium?.color : Colors.blue,
                        padding: EdgeInsets.zero,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.arrow_downward,
                            semanticLabel: 'Downvote',//  postEntity.myVote == 1 ? 'Downvoted' : 'Downvote',
                            color: theme.textTheme.bodyMedium?.color,// isUserLoggedIn ? (postEntity.myVote == -1 ? Colors.blue : theme.textTheme.bodyMedium?.color) : null,
                          ),
                          if (showScores) ...[
                            const SizedBox(width: 4.0),
                            Text(
                              formatNumberToK(widget.postViewMedia.postEntity.postVotes?.downVote ?? 0),
                              style: TextStyle(
                                color: theme.textTheme.bodyMedium?.color, // isUserLoggedIn ? (postEntity.myVote == -1 ? Colors.blue : theme.textTheme.bodyMedium?.color) : null,
                              ),
                            ),
                          ],
                        ],
                      ),
                    ),
                  ),
                Expanded(
                  flex: 1,
                  child: IconButton(
                    onPressed: isUserLoggedIn
                        ? () {
                            HapticFeedback.mediumImpact();
                            // context.read<PostBloc>().add(SavePostEvent(postId: post.id, save: !postEntity.saved));
                          }
                        : null,
                    icon: Icon(
                      postEntity.saved ? Icons.star_rounded : Icons.star_border_rounded,
                      semanticLabel: postEntity.saved ? 'Saved' : 'Save',
                      color: isUserLoggedIn ? (postEntity.saved ? Colors.purple : theme.textTheme.bodyMedium?.color) : null,
                    ),
                    style: IconButton.styleFrom(
                      foregroundColor: postEntity.saved ? null : Colors.purple,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: IconButton(
                    onPressed: isUserLoggedIn
                        ? () async {
                            // if (postEntity.post.locked) {
                            //   showSnackbar(context, l10n.postLocked);
                            //   return;
                            // }

                            // if (isOwnPost) {
                            //   ThunderBloc thunderBloc = context.read<ThunderBloc>();
                            //   AccountBloc accountBloc = context.read<AccountBloc>();

                            //   final ThunderState thunderState = context.read<ThunderBloc>().state;
                            //   final bool reduceAnimations = thunderState.reduceAnimations;

                            //   final Account? account = await fetchActiveProfileAccount();
                            //   final GetCommunityResponse getCommunityResponse = await LemmyClient.instance.lemmyApiV3.run(GetCommunity(
                            //     auth: account?.jwt,
                            //     id: postViewMedia.postEntity.community.id,
                            //   ));

                            //   if (context.mounted) {
                            //     Navigator.of(context).push(
                            //       SwipeablePageRoute(
                            //         transitionDuration: reduceAnimations ? const Duration(milliseconds: 100) : null,
                            //         canOnlySwipeFromEdge: true,
                            //         backGestureDetectionWidth: 45,
                            //         builder: (context) {
                            //           return MultiBlocProvider(
                            //             providers: [
                            //               BlocProvider<ThunderBloc>.value(value: thunderBloc),
                            //               BlocProvider<AccountBloc>.value(value: accountBloc),
                            //             ],
                            //             child: CreatePostPage(
                            //               communityId: postViewMedia.postEntity.community.id,
                            //               communityView: getCommunityResponse.communityView,
                            //               postEntity: postViewMedia.postEntity,
                            //               onPostSuccess: (PostViewMedia pvm) {
                            //                 setState(() => postViewMedia = pvm);
                            //               },
                            //             ),
                            //           );
                            //         },
                            //       ),
                            //     );
                            //   }
                            //   return;
                            // }

                            // PostBloc postBloc = context.read<PostBloc>();
                            // ThunderBloc thunderBloc = context.read<ThunderBloc>();
                            // account_bloc.AccountBloc accountBloc = context.read<account_bloc.AccountBloc>();

                            // final ThunderState state = context.read<ThunderBloc>().state;
                            // final bool reduceAnimations = state.reduceAnimations;

                            // SharedPreferences prefs = (await UserPreferences.instance).sharedPreferences;
                            // DraftComment? newDraftComment;
                            // DraftComment? previousDraftComment;
                            // String draftId = '${LocalSettings.draftsCache.name}-${widget.postViewMedia.postEntity.post.id}';
                            // String? draftCommentJson = prefs.getString(draftId);
                            // if (draftCommentJson != null) {
                            //   previousDraftComment = DraftComment.fromJson(jsonDecode(draftCommentJson));
                            // }
                            // Timer timer = Timer.periodic(const Duration(seconds: 10), (Timer t) {
                            //   if (newDraftComment?.isNotEmpty == true) {
                            //     prefs.setString(draftId, jsonEncode(newDraftComment!.toJson()));
                            //   }
                            // });

                            if (context.mounted) {
                              // Navigator.of(context)
                              //     .push(
                              //   SwipeablePageRoute(
                              //     transitionDuration: reduceAnimations ? const Duration(milliseconds: 100) : null,
                              //     canOnlySwipeFromEdge: true,
                              //     backGestureDetectionWidth: 45,
                              //     builder: (context) {
                              //       return MultiBlocProvider(
                              //         providers: [
                              //           BlocProvider<PostBloc>.value(value: postBloc),
                              //           BlocProvider<ThunderBloc>.value(value: thunderBloc),
                              //           BlocProvider<account_bloc.AccountBloc>.value(value: accountBloc),
                              //         ],
                              //         child: CreateCommentPage(
                              //           postEntity: widget.postViewMedia,
                              //           previousDraftComment: previousDraftComment,
                              //           onUpdateDraft: (c) => newDraftComment = c,
                              //         ),
                              //       );
                              //     },
                              //   ),
                              // )
                              //     .whenComplete(() async {
                              //   timer.cancel();

                              //   if (newDraftComment?.saveAsDraft == true && newDraftComment?.isNotEmpty == true) {
                              //     await Future.delayed(const Duration(milliseconds: 300));
                              //     if (context.mounted) {
                              //       showSnackbar(context, l10n.commentSavedAsDraft);
                              //     }
                              //     prefs.setString(draftId, jsonEncode(newDraftComment!.toJson()));
                              //   } else {
                              //     prefs.remove(draftId);
                              //   }
                              // });
                            }
                          }
                        : null,
                    icon: postEntity.locked
                        ? Icon(Icons.lock, semanticLabel: l10n.postLocked, color: Colors.orange.shade900)
                        : isOwnPost
                            ? Icon(Icons.edit_rounded, semanticLabel: AppLocalizations.of(context)!.edit)
                            : Icon(Icons.reply_rounded, semanticLabel: l10n.reply(0)),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: IconButton(
                    icon: const Icon(Icons.share_rounded, semanticLabel: 'Share'),
                    onPressed: () => showPostActionBottomModalSheet(
                                  context,
                                  widget.postViewMedia,
                                  actionsToInclude: [PostCardAction.sharePost, PostCardAction.shareMedia, PostCardAction.shareLink],
                                ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _getMediaPreview(ThunderState thunderState, bool hideNsfwPreviews, bool markPostReadOnMediaView, bool isUserLoggedIn) {
    return Stack(
      alignment: AlignmentDirectional.bottomEnd,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10.0,
            vertical: 4,
          ),
          child: MediaView(
            scrapeMissingPreviews: thunderState.scrapeMissingPreviews,
            postView: postViewMedia,
            showFullHeightImages: false,
            hideNsfwPreviews: hideNsfwPreviews,
            markPostReadOnMediaView: markPostReadOnMediaView,
            viewMode: ViewMode.compact,
            isUserLoggedIn: isUserLoggedIn,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 6, bottom: 0),
          child: TypeBadge(
            mediaType: postViewMedia.media.firstOrNull?.mediaType ?? MediaType.text,
            dim: false,
          ),
        ),
      ],
    );
  }
}

/// Provides a preview of the post body when the post is collapsed.
class PostBodyPreview extends StatelessWidget {
  const PostBodyPreview({
    super.key,
    required this.post,
    required this.expandableController,
    required this.onTapped,
  });

  /// The post to display the preview of
  final PostEntity post;

  /// The expandable controller used to toggle the expanded/collapsed state of the post
  final ExpandableController expandableController;

  /// Callback function which triggers when the post preview is tapped
  final Function() onTapped;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return LimitedBox(
      maxHeight: 80.0,
      child: GestureDetector(
        onTap: () {
          expandableController.toggle();
          onTapped();
        },
        child: Stack(
          children: [
            Wrap(
              direction: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: CommonMarkdownBody(body: post.body ?? ''),
                ),
              ],
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              height: 70,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: const [0.0, 1.0],
                    colors: [
                      theme.scaffoldBackgroundColor.withOpacity(0.0),
                      theme.scaffoldBackgroundColor,
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
