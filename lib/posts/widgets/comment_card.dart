import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uniun/common/widgets/comment_content.dart';
import 'package:uniun/common/widgets/scalable_text.dart';
import 'package:uniun/core/bloc/thunder/thunder_bloc.dart';
import 'package:uniun/core/bloc/user/user_bloc.dart';
import 'package:uniun/core/enum/nested_comment_indicator.dart';
import 'package:uniun/core/enum/swipe_action.dart';
import 'package:uniun/core/models/comment_view_tree.dart';
import 'package:uniun/core/models/community_moderator_view.dart';

import 'package:uniun/domain/entities/comment/comment_entity.dart';
import 'package:uniun/flutter_gen/gen_l10n/app_localizations.dart';
import 'package:uniun/posts/bloc/post_bloc.dart';
import '../utils/comment_action_helpers.dart';

class CommentCard extends StatefulWidget {
  final Function(int, int) onVoteAction;
  final Function(int, bool) onSaveAction;
  final Function(int, bool) onCollapseCommentChange;
  final Function(int, bool) onDeleteAction;
  final Function(CommentEntity, bool) onReplyEditAction;
  final Function(int) onReportAction;

  final Set collapsedCommentSet;
  final int? selectCommentId;
  final String? selectedCommentPath;
  final int? newlyCreatedCommentId;
  final int? moddingCommentId;

  final DateTime now;

  final List<CommunityModeratorView>? moderators;

  const CommentCard({
    super.key,
    required this.commentViewTree,
    this.level = 0,
    this.collapsed = false,
    required this.onVoteAction,
    required this.onSaveAction,
    required this.onCollapseCommentChange,
    required this.onReplyEditAction,
    required this.onReportAction,
    required this.now,
    this.collapsedCommentSet = const {},
    this.selectCommentId,
    this.selectedCommentPath,
    this.newlyCreatedCommentId,
    this.moddingCommentId,
    required this.onDeleteAction,
    required this.moderators,
  });

  /// CommentViewTree containing relevant information
  final CommentViewTree commentViewTree;

  /// The level of the comment within the comment tree - a higher level indicates a greater indentation
  final int level;

  /// Whether the comment is collapsed or expanded
  final bool collapsed;

  @override
  State<CommentCard> createState() => _CommentCardState();
}

class _CommentCardState extends State<CommentCard> with SingleTickerProviderStateMixin {
  // @todo - make this themeable
  List<Color> colors = [
    Colors.red.shade300,
    Colors.orange.shade300,
    Colors.yellow.shade300,
    Colors.green.shade300,
    Colors.blue.shade300,
    Colors.indigo.shade300,
  ];

  bool isHidden = true;
  GlobalKey childKey = GlobalKey();

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

  /// Whether we are fetching more comments from this comment
  bool isFetchingMoreComments = false;

  /// This is used to temporarily disable the swipe action to allow for detection of full screen swipe to go back
  bool isOverridingSwipeGestureAction = false;

  late final AnimationController _controller = AnimationController(
    duration: const Duration(milliseconds: 100),
    vsync: this,
  );

  // Animation for comment collapse
  late final Animation<Offset> _offsetAnimation = Tween<Offset>(
    begin: Offset.zero,
    end: const Offset(1.5, 0.0),
  ).animate(CurvedAnimation(
    parent: _controller,
    curve: Curves.fastOutSlowIn,
  ));

  @override
  void initState() {
    super.initState();
    isHidden = widget.collapsed;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Color getColor(ThemeData theme, int level) {
    return Color.alphaBlend(theme.colorScheme.primary.withOpacity(0.4), colors[level]);
  }

  @override
  Widget build(BuildContext context) {
    // int? myVote = widget.commentViewTree.commentView?.myVote;
    bool? saved = widget.commentViewTree.commentEntity?.saved;

    final theme = Theme.of(context);

    // Checks for the same creator id to user id
    final bool isOwnComment = widget.commentViewTree.commentEntity?.creator.id == context.read<UserBloc>().state.userId;
    final bool isUserLoggedIn = context.read<UserBloc>().state.isLoggedIn;
    final ThunderState state = context.read<ThunderBloc>().state;

    final int? commentId = widget.commentViewTree.commentEntity?.commentID;
    bool highlightComment = false;
    if (widget.selectCommentId == commentId && widget.newlyCreatedCommentId == null || widget.newlyCreatedCommentId == commentId) {
      highlightComment = true;
    }

    NestedCommentIndicatorStyle nestedCommentIndicatorStyle = state.nestedCommentIndicatorStyle;
    NestedCommentIndicatorColor nestedCommentIndicatorColor = state.nestedCommentIndicatorColor;

    return BlocListener<PostBloc, PostState>(
      listener: (context, state) {
        if (isFetchingMoreComments && state.status != PostStatus.refreshing) {
          isFetchingMoreComments = false;
        }
      },
      child: Container(
        // This is the color "behind" the nested comments filling the indented space
        decoration: BoxDecoration(
          border: nestedCommentIndicatorStyle == NestedCommentIndicatorStyle.thin
              ? Border(
                  left: BorderSide(
                    width: widget.level == 0 || widget.level == 1 ? 0 : 1.0,
                    // This is the color of the nested comment indicator in thin mode
                    color: widget.level == 0 || widget.level == 1
                        ? theme.colorScheme.background
                        : nestedCommentIndicatorColor == NestedCommentIndicatorColor.colorful
                            ? getColor(theme, ((widget.level - 2) % 6).toInt())
                            : theme.hintColor.withOpacity(0.25),
                  ),
                )
              : const Border(),
        ),
        child: Container(
          margin: EdgeInsets.only(
            left: switch (nestedCommentIndicatorStyle) {
              NestedCommentIndicatorStyle.thin => widget.level == 0 ? 0 : 7,
              NestedCommentIndicatorStyle.thick => widget.level == 0 ? 0 : 4,
            },
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Divider(height: 1),
              Listener(
                behavior: HitTestBehavior.opaque,
                onPointerDown: (event) => {},
                onPointerUp: (event) {
                  if (isOverridingSwipeGestureAction) {
                    setState(() => isOverridingSwipeGestureAction = false);
                  }

                  if (swipeAction != null && swipeAction != SwipeAction.none) {
                    // triggerCommentAction(
                    //   context: context,
                    //   swipeAction: swipeAction,
                    //   onSaveAction: (int commentId, bool saved) => widget.onSaveAction(commentId, saved),
                    //   onVoteAction: (int commentId, int vote) => widget.onVoteAction(commentId, vote),
                    //   voteType: 0,
                    //   saved: saved,
                    //   commentEntity: widget.commentViewTree.commentEntity!,
                    //   selectedCommentId: widget.selectCommentId,
                    //   selectedCommentPath: widget.selectedCommentPath,
                    // );
                  }
                },
                onPointerCancel: (event) => {},
                onPointerMove: (PointerMoveEvent event) {
                  // Get the horizontal drag distance
                  double horizontalDragDistance = event.delta.dx;

                  // We are checking to see if there is a left to right swipe here. If there is a left to right swipe, and LTR swipe actions are disabled, then we disable the DismissDirection temporarily
                  // to allow for the full screen swipe to go back. Otherwise, we retain the default behaviour
                  // if (horizontalDragDistance > 0) {
                  //   if (determineCommentSwipeDirection(isUserLoggedIn, state) == DismissDirection.endToStart && isOverridingSwipeGestureAction == false && dismissThreshold == 0.0) {
                  //     setState(() => isOverridingSwipeGestureAction = true);
                  //   }
                  // } else {
                  //   if (determineCommentSwipeDirection(isUserLoggedIn, state) == DismissDirection.endToStart && isOverridingSwipeGestureAction == true) {
                  //     setState(() => isOverridingSwipeGestureAction = false);
                  //   }
                  // }
                },
                child: Dismissible(
                  direction: DismissDirection.none,// isOverridingSwipeGestureAction == true ? DismissDirection.none : determineCommentSwipeDirection(isUserLoggedIn, state),
                  key: ObjectKey(widget.commentViewTree.commentEntity?.commentID),
                  resizeDuration: Duration.zero,
                  dismissThresholds: const {DismissDirection.endToStart: 1, DismissDirection.startToEnd: 1},
                  confirmDismiss: (DismissDirection direction) async {
                    return false;
                  },
                  onUpdate: (DismissUpdateDetails details) {
                    SwipeAction? updatedSwipeAction;

                    if (details.progress > firstActionThreshold && details.progress < secondActionThreshold && details.direction == DismissDirection.startToEnd) {
                      updatedSwipeAction = state.leftPrimaryCommentGesture;

                      // Change the swipe action to edit for comments
                      if (updatedSwipeAction == SwipeAction.reply && isOwnComment) {
                        updatedSwipeAction = SwipeAction.edit;
                      }

                      if (updatedSwipeAction != swipeAction) HapticFeedback.mediumImpact();
                    } else if (details.progress > secondActionThreshold && details.direction == DismissDirection.startToEnd) {
                      if (state.leftSecondaryCommentGesture != SwipeAction.none) {
                        updatedSwipeAction = state.leftSecondaryCommentGesture;
                      } else {
                        updatedSwipeAction = state.leftPrimaryCommentGesture;
                      }

                      // Change the swipe action to edit for comments
                      if (updatedSwipeAction == SwipeAction.reply && isOwnComment) {
                        updatedSwipeAction = SwipeAction.edit;
                      }

                      if (updatedSwipeAction != swipeAction) HapticFeedback.mediumImpact();
                    } else if (details.progress > firstActionThreshold && details.progress < secondActionThreshold && details.direction == DismissDirection.endToStart) {
                      updatedSwipeAction = state.rightPrimaryCommentGesture;

                      // Change the swipe action to edit for comments
                      if (updatedSwipeAction == SwipeAction.reply && isOwnComment) {
                        updatedSwipeAction = SwipeAction.edit;
                      }

                      if (updatedSwipeAction != swipeAction) HapticFeedback.mediumImpact();
                    } else if (details.progress > secondActionThreshold && details.direction == DismissDirection.endToStart) {
                      if (state.rightSecondaryCommentGesture != SwipeAction.none) {
                        updatedSwipeAction = state.rightSecondaryCommentGesture;
                      } else {
                        updatedSwipeAction = state.rightPrimaryCommentGesture;
                      }

                      // Change the swipe action to edit for comments
                      if (updatedSwipeAction == SwipeAction.reply && isOwnComment) {
                        updatedSwipeAction = SwipeAction.edit;
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
                          color: swipeAction == null ? state.leftPrimaryCommentGesture.getColor().withOpacity(dismissThreshold / firstActionThreshold) : (swipeAction ?? SwipeAction.none).getColor(),
                          duration: const Duration(milliseconds: 200),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * dismissThreshold,
                            child: swipeAction == null ? Container() : Icon((swipeAction ?? SwipeAction.none).getIcon()),
                          ),
                        )
                      : AnimatedContainer(
                          alignment: Alignment.centerRight,
                          color:
                              swipeAction == null ? (state.rightPrimaryCommentGesture).getColor().withOpacity(dismissThreshold / firstActionThreshold) : (swipeAction ?? SwipeAction.none).getColor(),
                          duration: const Duration(milliseconds: 200),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * dismissThreshold,
                            child: swipeAction == null ? Container() : Icon((swipeAction ?? SwipeAction.none).getIcon()),
                          ),
                        ),
                  child: Container(
                      decoration: BoxDecoration(
                        border: nestedCommentIndicatorStyle == NestedCommentIndicatorStyle.thin
                            ? Border(
                                left: BorderSide(
                                  width: widget.level == 0 ? 0 : 1.0,
                                  // This is the color of the nested comment indicator in thin mode
                                  color: widget.level == 0
                                      ? theme.colorScheme.background
                                      : nestedCommentIndicatorColor == NestedCommentIndicatorColor.colorful
                                          ? getColor(theme, ((widget.level - 1) % 6).toInt())
                                          : theme.hintColor.withOpacity(0.25),
                                ),
                              )
                            : Border(
                                left: BorderSide(
                                  width: widget.level == 0 ? 0 : 4.0,
                                  // This is the color of the nested comment indicator in thin mode
                                  color: widget.level == 0
                                      ? theme.colorScheme.background
                                      : nestedCommentIndicatorColor == NestedCommentIndicatorColor.colorful
                                          ? getColor(theme, ((widget.level - 1) % 6).toInt())
                                          : theme.hintColor,
                                ),
                              ),
                      ),
                      child: Material(
                        color: highlightComment ? theme.highlightColor : theme.colorScheme.background,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            InkWell(
                              onLongPress: () {
                                HapticFeedback.mediumImpact();
                                showCommentActionBottomModalSheet(
                                    context, widget.commentViewTree.commentEntity!, widget.onSaveAction, widget.onDeleteAction, widget.onVoteAction, widget.onReplyEditAction, widget.onReportAction);
                              },
                              onTap: () {
                                widget.onCollapseCommentChange(widget.commentViewTree.commentEntity!.commentID, !isHidden);
                                setState(() => isHidden = !isHidden);
                              },
                              child: CommentContent(
                                comment: widget.commentViewTree.commentEntity!,
                                isUserLoggedIn: isUserLoggedIn,
                                now: widget.now,
                                onSaveAction: (int commentId, bool save) => widget.onSaveAction(commentId, save),
                                onVoteAction: (int commentId, int vote) => widget.onVoteAction(commentId, vote),
                                onDeleteAction: (int commentId, bool deleted) => widget.onDeleteAction(commentId, deleted),
                                onReportAction: (int commentId) => widget.onReportAction(commentId),
                                onReplyEditAction: (CommentEntity commentEntity, bool isEdit) => widget.onReplyEditAction(commentEntity, isEdit),
                                isOwnComment: isOwnComment,
                                isHidden: isHidden,
                                moderators: widget.moderators,
                              ),
                            ),
                          ],
                        ),
                      )),
                ),
              ),
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 130),
                switchInCurve: Curves.easeInOut,
                switchOutCurve: Curves.easeInOut,
                transitionBuilder: (Widget child, Animation<double> animation) {
                  return SizeTransition(
                    sizeFactor: animation,
                    child: SlideTransition(position: _offsetAnimation, child: child),
                  );
                },
                child: isHidden
                    ? Container()
                    : widget.commentViewTree.replies.isEmpty && widget.commentViewTree.commentEntity!.childCount > 0
                        ? Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(
                                  left: switch (nestedCommentIndicatorStyle) {
                                    NestedCommentIndicatorStyle.thin => 7,
                                    NestedCommentIndicatorStyle.thick => 4,
                                  },
                                ),
                                child: InkWell(
                                  onTap: () {
                                    context.read<PostBloc>().add(GetPostCommentsEvent(commentParentId: widget.commentViewTree.commentEntity?.commentID));
                                    setState(() {
                                      isFetchingMoreComments = true;
                                    });
                                  },
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Divider(height: 1),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              border: Border(
                                                left: BorderSide(
                                                  width: nestedCommentIndicatorStyle == NestedCommentIndicatorStyle.thick ? 4.0 : 1,
                                                  // This is the color of the nested comment indicator for deferred load
                                                  color: nestedCommentIndicatorColor == NestedCommentIndicatorColor.colorful ? getColor(theme, (widget.level % 6).toInt()) : theme.hintColor,
                                                ),
                                              ),
                                            ),
                                            padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
                                            child: ScalableText(
                                              widget.commentViewTree.commentEntity?.childCount == 1
                                                  ? AppLocalizations.of(context)!.loadMoreSingular(widget.commentViewTree.commentEntity!.childCount)
                                                  : AppLocalizations.of(context)!.loadMorePlural(widget.commentViewTree.commentEntity!.childCount),
                                              fontScale: state.commentFontSizeScale,
                                              style: theme.textTheme.bodyMedium?.copyWith(
                                                color: theme.textTheme.bodyMedium?.color?.withOpacity(0.5),
                                              ),
                                            ),
                                          ),
                                          isFetchingMoreComments
                                              ? const Padding(
                                                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                                                  child: SizedBox(width: 20, height: 20, child: CircularProgressIndicator()),
                                                )
                                              : Container(),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          )
                        : ListView.builder(
                            // addSemanticIndexes: false,
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) => CommentCard(
                              moddingCommentId: widget.moddingCommentId,
                              selectedCommentPath: widget.selectedCommentPath,
                              selectCommentId: widget.selectCommentId,
                              newlyCreatedCommentId: widget.newlyCreatedCommentId,
                              now: widget.now,
                              commentViewTree: widget.commentViewTree.replies[index],
                              collapsedCommentSet: widget.collapsedCommentSet,
                              collapsed: widget.collapsedCommentSet.contains(widget.commentViewTree.replies[index].commentEntity?.commentID),
                              level: widget.level + 1,
                              onVoteAction: widget.onVoteAction,
                              onReportAction: widget.onReportAction,
                              onSaveAction: widget.onSaveAction,
                              onCollapseCommentChange: widget.onCollapseCommentChange,
                              onDeleteAction: widget.onDeleteAction,
                              onReplyEditAction: widget.onReplyEditAction,
                              moderators: widget.moderators,
                            ),
                            itemCount: isHidden ? 0 : widget.commentViewTree.replies.length,
                          ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
