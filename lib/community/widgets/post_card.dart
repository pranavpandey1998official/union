import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uniun/community/utils/post_card_action_helpers.dart';
import 'package:uniun/community/widgets/post_card_view_comfortable.dart';
import 'package:uniun/community/widgets/post_card_view_compact.dart';
import 'package:uniun/core/bloc/thunder/thunder_bloc.dart';
import 'package:uniun/core/bloc/user/user_bloc.dart';
import 'package:uniun/core/enum/swipe_action.dart';
import 'package:uniun/core/models/post_view_media.dart';
import 'package:uniun/domain/entities/post/post_entity.dart';


class PostCard extends StatefulWidget {
  final PostViewMedia postViewMedia;
  final bool communityMode;
  final bool indicateRead;

  final Function(int) onVoteAction;
  final Function(bool) onSaveAction;
  final Function(bool) onReadAction;


  const PostCard({
    super.key,
    required this.postViewMedia,
    required this.communityMode,
    required this.onVoteAction,
    required this.onSaveAction,
    required this.onReadAction,
    required this.indicateRead,
  });

  @override
  State<PostCard> createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  /// The current point at which the user drags the comment
  double dismissThreshold = 0;

  /// The current swipe action that would be performed if the user let go off the screen
  SwipeAction? swipeAction;

  /// Determines the direction that the user is allowed to drag (to enable/disable swipe gestures)
  DismissDirection? dismissDirection;

  /// The first action threshold to trigger the left or right actions (upvote/reply)
  double firstActionThreshold = 0.15;

  /// The second action threshold to trigger the left or right actions (downvote/save)
  double secondActionThreshold = 0.35;

  /// User Settings
  bool isUserLoggedIn = false;

  /// This is used to temporarily disable the swipe action to allow for detection of full screen swipe to go back
  bool isOverridingSwipeGestureAction = false;

  @override
  void initState() {
    super.initState();

    isUserLoggedIn = context.read<UserBloc>().state.isLoggedIn;
  }

  @override
  Widget build(BuildContext context) {
    final ThunderState state = context.read<ThunderBloc>().state;

    bool saved = widget.postViewMedia.postEntity.saved;
    bool read = widget.postViewMedia.postEntity.read;

    return Listener(
      behavior: HitTestBehavior.opaque,
      onPointerDown: (event) => {},
      onPointerUp: (event) {
        setState(() => isOverridingSwipeGestureAction = false);

        // if (swipeAction != null && swipeAction != SwipeAction.none) {
        //   triggerPostAction(
        //     context: context,
        //     swipeAction: swipeAction,
        //     onSaveAction: (int postId, bool saved) => widget.onSaveAction(saved),
        //     onVoteAction: (int postId, int vote) => widget.onVoteAction(vote),
        //     onToggleReadAction: (int postId, bool read) => widget.onReadAction(read),
        //     voteType: 0,
        //     saved: saved,
        //     read: read,
        //     postViewMedia: widget.postViewMedia,
        //   );
        // }
      },
      onPointerCancel: (event) => {},
      onPointerMove: (PointerMoveEvent event) {
        // Get the horizontal drag distance
        double horizontalDragDistance = event.delta.dx;

        // We are checking to see if there is a left to right swipe here. If there is a left to right swipe, and LTR swipe actions are disabled, then we disable the DismissDirection temporarily
        // to allow for the full screen swipe to go back. Otherwise, we retain the default behaviour
        // if (horizontalDragDistance > 0) {
        //   if (determinePostSwipeDirection(isUserLoggedIn, state) == DismissDirection.endToStart && isOverridingSwipeGestureAction == false && dismissThreshold == 0.0) {
        //     setState(() => isOverridingSwipeGestureAction = true);
        //   }
        // } else {
        //   if (determinePostSwipeDirection(isUserLoggedIn, state) == DismissDirection.endToStart && isOverridingSwipeGestureAction == true) {
        //     setState(() => isOverridingSwipeGestureAction = false);
        //   }
        // }
      },
      child: Column(
        children: [
          Divider(
            height: 1.0,
            thickness: 4.0,
            color: ElevationOverlay.applySurfaceTint(
              Theme.of(context).colorScheme.surface,
              Theme.of(context).colorScheme.surfaceTint,
              10,
            ),
          ),
          Dismissible(
            direction:  DismissDirection.none,// isOverridingSwipeGestureAction == true ? DismissDirection.none : determinePostSwipeDirection(isUserLoggedIn, state),
            key: ObjectKey(widget.postViewMedia.postEntity.postID),
            resizeDuration: Duration.zero,
            dismissThresholds: const {DismissDirection.endToStart: 1, DismissDirection.startToEnd: 1},
            confirmDismiss: (DismissDirection direction) async {
              return false;
            },
            onUpdate: (DismissUpdateDetails details) {
              SwipeAction? updatedSwipeAction;

              if (details.progress > firstActionThreshold && details.progress < secondActionThreshold && details.direction == DismissDirection.startToEnd) {
                updatedSwipeAction = state.leftPrimaryPostGesture;
                if (updatedSwipeAction != swipeAction) HapticFeedback.mediumImpact();
              } else if (details.progress > secondActionThreshold && details.direction == DismissDirection.startToEnd) {
                if (state.leftSecondaryPostGesture != SwipeAction.none) {
                  updatedSwipeAction = state.leftSecondaryPostGesture;
                } else {
                  updatedSwipeAction = state.leftPrimaryPostGesture;
                }
                if (updatedSwipeAction != swipeAction) HapticFeedback.mediumImpact();
              } else if (details.progress > firstActionThreshold && details.progress < secondActionThreshold && details.direction == DismissDirection.endToStart) {
                updatedSwipeAction = state.rightPrimaryPostGesture;
                if (updatedSwipeAction != swipeAction) HapticFeedback.mediumImpact();
              } else if (details.progress > secondActionThreshold && details.direction == DismissDirection.endToStart) {
                if (state.rightSecondaryPostGesture != SwipeAction.none) {
                  updatedSwipeAction = state.rightSecondaryPostGesture;
                } else {
                  updatedSwipeAction = state.rightPrimaryPostGesture;
                }

                if (updatedSwipeAction != swipeAction) HapticFeedback.mediumImpact();
              } else {
                updatedSwipeAction = null;
              }

              setState(() {
                dismissThreshold = details.progress;
                dismissDirection = details.direction;
                swipeAction = updatedSwipeAction;
              });
            },
            background: dismissDirection == DismissDirection.startToEnd
                ? AnimatedContainer(
                    alignment: Alignment.centerLeft,
                    color: swipeAction == null ? state.leftPrimaryPostGesture.getColor().withOpacity(dismissThreshold / firstActionThreshold) : (swipeAction ?? SwipeAction.none).getColor(),
                    duration: const Duration(milliseconds: 200),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * (state.tabletMode ? 0.5 : 1) * dismissThreshold,
                      child: swipeAction == null ? Container() : Icon((swipeAction ?? SwipeAction.none).getIcon(read: read)),
                    ),
                  )
                : AnimatedContainer(
                    alignment: Alignment.centerRight,
                    color: swipeAction == null ? state.rightPrimaryPostGesture.getColor().withOpacity(dismissThreshold / firstActionThreshold) : (swipeAction ?? SwipeAction.none).getColor(),
                    duration: const Duration(milliseconds: 200),
                    child: SizedBox(
                      width: (MediaQuery.of(context).size.width * (state.tabletMode ? 0.5 : 1)) * dismissThreshold,
                      child: swipeAction == null ? Container() : Icon((swipeAction ?? SwipeAction.none).getIcon(read: read)),
                    ),
                  ),
            child: InkWell(
              child: state.useCompactView
                  ? PostCardViewCompact(
                      postViewMedia: widget.postViewMedia,
                      communityMode: widget.communityMode,
                      isUserLoggedIn: isUserLoggedIn,
                      navigateToPost: ({PostViewMedia? postViewMedia}) async => {},//await navigateToPost(context, postViewMedia: widget.postViewMedia),
                      indicateRead: widget.indicateRead,
                    )
                  : PostCardViewComfortable(
                      postViewMedia: widget.postViewMedia,
                      showThumbnailPreviewOnRight: state.showThumbnailPreviewOnRight,
                      hideNsfwPreviews: state.hideNsfwPreviews,
                      markPostReadOnMediaView: state.markPostReadOnMediaView,
                      communityMode: widget.communityMode,
                      showPostAuthor: state.showPostAuthor,
                      showFullHeightImages: state.showFullHeightImages,
                      edgeToEdgeImages: state.showEdgeToEdgeImages,
                      showTitleFirst: state.showTitleFirst,
                      showVoteActions: state.showVoteActions,
                      showSaveAction: state.showSaveAction,
                      showCommunityIcons: state.showCommunityIcons,
                      showTextContent: state.showTextContent,
                      isUserLoggedIn: isUserLoggedIn,
                      onVoteAction: widget.onVoteAction,
                      onSaveAction: widget.onSaveAction,
                      navigateToPost: ({PostViewMedia? postViewMedia}) async =>{}, //await navigateToPost(context, postViewMedia: widget.postViewMedia),
                      indicateRead: widget.indicateRead,
                    ),
              onLongPress: () => showPostActionBottomModalSheet(
                context,
                widget.postViewMedia,
                actionsToInclude: [
                  PostCardAction.visitInstance,
                  PostCardAction.visitProfile,
                  PostCardAction.blockUser,
                  PostCardAction.blockInstance,
                  PostCardAction.visitCommunity,
                  widget.postViewMedia.postEntity.subscribed ? PostCardAction.subscribeToCommunity : PostCardAction.unsubscribeFromCommunity,
                  PostCardAction.blockCommunity,
                ],
                multiActionsToInclude: [
                  PostCardAction.upvote,
                  PostCardAction.downvote,
                  PostCardAction.save,
                  PostCardAction.toggleRead,
                  PostCardAction.share,
                ],
              ),
              onTap: () async {
                // PostEntity postEntity = widget.postViewMedia.postEntity;
                // if (postView.read == false && isUserLoggedIn) context.read<FeedBloc>().add(FeedItemActionedEvent(postId: postView.post.id, postAction: PostAction.read, value: true));
                // return await navigateToPost(context, postViewMedia: widget.postViewMedia);
              },
            ),
          ),
        ],
      ),
    );
  }
}
