import 'dart:async';
import 'dart:convert';

import 'package:back_button_interceptor/back_button_interceptor.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uniun/common/locator.dart';
import 'package:uniun/common/widgets/snackbar.dart';
import 'package:uniun/core/bloc/uniun/uniun_bloc.dart';
import 'package:uniun/core/bloc/uniun/uniun_event.dart';
import 'package:uniun/core/bloc/uniun/uniun_state.dart';
import 'package:uniun/core/bloc/user/user_bloc.dart';
import 'package:uniun/core/enum/comment_sort_type.dart';
import 'package:uniun/core/enum/fab_action.dart';
import 'package:uniun/core/models/comment_view_tree.dart';
import 'package:uniun/core/widgets/error_message.dart';
import 'package:uniun/core/widgets/gesture_fab.dart';
import 'package:uniun/core/widgets/input_dialogs.dart';
import 'package:uniun/domain/entities/comment/comment_entity.dart';
import 'package:uniun/domain/entities/post/post_entity.dart';
import 'package:uniun/flutter_gen/gen_l10n/app_localizations.dart';
import 'package:uniun/posts/bloc/post_bloc.dart';
import 'package:uniun/posts/pages/post_page_success.dart';
import 'package:uniun/posts/widgets/comment_navigator_fab.dart';
import 'package:uniun/posts/widgets/comment_sort_picker.dart';

class PostPage extends StatefulWidget {
  final int? postId;
  final String? selectedCommentPath;
  final int? selectedCommentId;

  final Function(PostEntity)? onPostUpdated;

  const PostPage({
    super.key,
    this.postId,
    this.selectedCommentPath,
    this.selectedCommentId,
    this.onPostUpdated,
  });

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  final ItemScrollController _itemScrollController = ItemScrollController();
  final ItemPositionsListener _itemPositionsListener = ItemPositionsListener.create();
  bool hasScrolledToBottom = false;
  bool resetFailureMessage = true;
  bool _previousIsFabOpen = false;
  bool isFabOpen = false;
  bool _previousIsFabSummoned = true;
  bool isFabSummoned = true;
  bool enableFab = false;
  bool enableCommentNavigation = true;
  bool combineNavAndFab = true;

  CommentSortType? sortType;
  IconData? sortTypeIcon;
  String? sortTypeLabel;

  /// The messenger key for this post page
  final GlobalKey<ScaffoldMessengerState> _scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

  @override
  void initState() {
    super.initState();
    BackButtonInterceptor.add(_handleBack);
  }

  @override
  void dispose() {
    BackButtonInterceptor.remove(_handleBack);
    super.dispose();
  }

  FutureOr<bool> _handleBack(bool stopDefaultButtonEvent, RouteInfo info) async {
    // if (context.read<ThunderBloc>().state.isFabOpen) {
    //   context.read<ThunderBloc>().add(const OnFabToggle(false));
    // }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final UniunState uniunState = context.watch<UniunBloc>().state;
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    enableFab = uniunState.enablePostsFab;

    bool enableBackToTop = true; // uniunState.postFabEnableBackToTop;
    bool enableChangeSort = true; //uniunState.postFabEnableChangeSort;
    bool enableReplyToPost = true; //uniunState.postFabEnableReplyToPost;
    bool enableRefresh = true; //uniunState.postFabEnableRefresh;
    bool enableSearch = true; //uniunState.postFabEnableSearch;

  

    PostFabAction singlePressAction = PostFabAction.replyToPost;
    PostFabAction longPressAction = PostFabAction.openFab;

    enableCommentNavigation = true; //uniunState.enableCommentNavigation;
    combineNavAndFab =  true; //enableCommentNavigation && uniunState.combineNavAndFab;

    if (uniunState.isFabOpen != _previousIsFabOpen) {
      isFabOpen = uniunState.isFabOpen;
      _previousIsFabOpen = isFabOpen;
    }

    if (uniunState.isFabSummoned != _previousIsFabSummoned) {
      isFabSummoned = uniunState.isFabSummoned;
      _previousIsFabSummoned = isFabSummoned;
    }

    return ScaffoldMessenger(
      key: _scaffoldMessengerKey,
      child: BlocProvider<PostBloc>(
        create: (context) => getIt<PostBloc>(),
        child: BlocConsumer<PostBloc, PostState>(
          listenWhen: (previousState, currentState) {
            if (previousState.sortType != currentState.sortType) {
              setState(() {
                sortType = currentState.sortType;
                final sortTypeItem = CommentSortPicker.getCommentSortTypeItems()
                    .firstWhere((sortTypeItem) => sortTypeItem.payload == currentState.sortType);
                sortTypeIcon = sortTypeItem.icon;
                sortTypeLabel = sortTypeItem.label;
              });
            }
            return true;
          },
          listener: (context, state) {},
          builder: (context, state) {
            bool postLocked = state.postViewMedia?.postEntity.locked;
            return Scaffold(
              appBar: AppBar(
                title: ListTile(
                  title: Text(
                    sortTypeLabel?.isNotEmpty == true ? l10n.comments : '',
                    style: theme.textTheme.titleLarge,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  subtitle: Row(
                    children: [
                      Icon(sortTypeIcon, size: 13),
                      const SizedBox(width: 4),
                      Text(sortTypeLabel ?? ''),
                    ],
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                ),
                flexibleSpace: Semantics(
                  excludeSemantics: true,
                  child: GestureDetector(
                    onTap: () {
                      if (context.read<UniunBloc>().state.isFabOpen) {
                        context.read<UniunBloc>().add(const OnFabToggle(false));
                      }
                    },
                  ),
                ),
                leading: IconButton(
                  icon: Icon(
                    Icons.arrow_back_rounded,
                    semanticLabel: l10n.back,
                  ),
                  onPressed: () {
                    if (context.read<UniunBloc>().state.isFabOpen) {
                      context.read<UniunBloc>().add(const OnFabToggle(false));
                    }
                    Navigator.pop(context);
                  },
                ),
                actions: [
                  IconButton(
                      icon: Icon(Icons.refresh_rounded, semanticLabel: l10n.refresh),
                      onPressed: () {
                        if (context.read<UniunBloc>().state.isFabOpen) {
                          context.read<UniunBloc>().add(const OnFabToggle(false));
                        }
                        HapticFeedback.mediumImpact();
                        // return context
                        //     .read<PostBloc>()
                        //     .add(GetPostEvent(postView: widget.postView, postId: widget.postId, selectedCommentId: state.selectedCommentId, selectedCommentPath: state.selectedCommentPath));
                      }),
                  IconButton(
                    icon: Icon(
                      Icons.sort,
                      semanticLabel: l10n.sortBy,
                    ),
                    tooltip: l10n.sortBy,
                    onPressed: () {
                      if (context.read<UniunBloc>().state.isFabOpen) {
                        context.read<UniunBloc>().add(const OnFabToggle(false));
                      }
                      showSortBottomSheet(context, state);
                    },
                  ),
                ],
                centerTitle: false,
                toolbarHeight: 70.0,
              ),
              floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
              floatingActionButton: Stack(
                alignment: Alignment.center,
                children: [
                  if (enableCommentNavigation)
                    Positioned.fill(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: CommentNavigatorFab(
                            itemPositionsListener: _itemPositionsListener,
                          ),
                        ),
                      ),
                    ),
                  if (enableFab)
                    Padding(
                      padding: EdgeInsets.only(
                        right: combineNavAndFab ? 0 : 16,
                        bottom: combineNavAndFab ? 5 : 0,
                      ),
                      child: AnimatedSwitcher(
                        duration: const Duration(milliseconds: 250),
                        child: isFabSummoned
                            ? GestureFab(
                                centered: combineNavAndFab,
                                distance: combineNavAndFab ? 45 : 60,
                                icon: Icon(
                                  state.status == PostStatus.searchInProgress ? Icons.youtube_searched_for_rounded : singlePressAction.getIcon(postLocked: postLocked),
                                  semanticLabel: state.status == PostStatus.searchInProgress ? l10n.search : singlePressAction.getTitle(context, postLocked: postLocked),
                                  size: 35,
                                ),
                                onPressed: state.status == PostStatus.searchInProgress
                                    ? () {
                                        context.read<PostBloc>().add(const ContinueCommentSearchEvent());
                                      }
                                    : () => singlePressAction.execute(
                                        context: context,
                                        postViewMedia: state.postViewMedia,
                                        postId: state.postId,
                                        selectedCommentId: state.selectedCommentId,
                                        selectedCommentPath: state.selectedCommentPath,
                                        override: singlePressAction == PostFabAction.backToTop
                                            ? () => {
                                                  _itemScrollController.scrollTo(
                                                    index: 0,
                                                    duration: const Duration(milliseconds: 500),
                                                    curve: Curves.easeInOut,
                                                  )
                                                }
                                            : singlePressAction == PostFabAction.changeSort
                                                ? () => showSortBottomSheet(context, state)
                                                : singlePressAction == PostFabAction.replyToPost
                                                    ? () => replyToPost(context, postLocked: postLocked)
                                                    : null),
                                onLongPress: () => longPressAction.execute(
                                    context: context,
                                    postViewMedia: state.postViewMedia,
                                    postId: state.postId,
                                    selectedCommentId: state.selectedCommentId,
                                    selectedCommentPath: state.selectedCommentPath,
                                    override: longPressAction == PostFabAction.backToTop
                                        ? () => {
                                              _itemScrollController.scrollTo(
                                                index: 0,
                                                duration: const Duration(milliseconds: 500),
                                                curve: Curves.easeInOut,
                                              )
                                            }
                                        : longPressAction == PostFabAction.changeSort
                                            ? () => showSortBottomSheet(context, state)
                                            : longPressAction == PostFabAction.replyToPost
                                                ? () => replyToPost(context, postLocked: postLocked)
                                                : null),
                                children: [
                                  if (enableRefresh)
                                    ActionButton(
                                      centered: combineNavAndFab,
                                      onPressed: () {
                                        HapticFeedback.mediumImpact();
                                        PostFabAction.refresh.execute(
                                          context: context,
                                          postViewMedia: state.postViewMedia,
                                          postId: state.postId,
                                          selectedCommentId: state.selectedCommentId,
                                          selectedCommentPath: state.selectedCommentPath,
                                        );
                                      },
                                      title: PostFabAction.refresh.getTitle(context),
                                      icon: Icon(
                                        PostFabAction.refresh.getIcon(),
                                      ),
                                    ),
                                  if (enableReplyToPost)
                                    ActionButton(
                                      centered: combineNavAndFab,
                                      onPressed: () {
                                        HapticFeedback.mediumImpact();
                                        PostFabAction.replyToPost.execute(
                                          override: () => replyToPost(context, postLocked: postLocked),
                                        );
                                      },
                                      title: PostFabAction.replyToPost.getTitle(context),
                                      icon: Icon(
                                        postLocked ? Icons.lock : PostFabAction.replyToPost.getIcon(),
                                      ),
                                    ),
                                  if (enableChangeSort)
                                    ActionButton(
                                      centered: combineNavAndFab,
                                      onPressed: () {
                                        HapticFeedback.mediumImpact();
                                        PostFabAction.changeSort.execute(
                                          override: () => showSortBottomSheet(context, state),
                                        );
                                      },
                                      title: PostFabAction.changeSort.getTitle(context),
                                      icon: Icon(
                                        PostFabAction.changeSort.getIcon(),
                                      ),
                                    ),
                                  if (enableBackToTop)
                                    ActionButton(
                                      centered: combineNavAndFab,
                                      onPressed: () {
                                        PostFabAction.backToTop.execute(
                                            override: () => {
                                                  _itemScrollController.scrollTo(
                                                    index: 0,
                                                    duration: const Duration(milliseconds: 500),
                                                    curve: Curves.easeInOut,
                                                  )
                                                });
                                      },
                                      title: PostFabAction.backToTop.getTitle(context),
                                      icon: Icon(
                                        PostFabAction.backToTop.getIcon(),
                                      ),
                                    ),
                                  if (enableSearch)
                                    ActionButton(
                                      centered: combineNavAndFab,
                                      onPressed: () {
                                        PostFabAction.search.execute(override: () {
                                          if (state.status == PostStatus.searchInProgress) {
                                            context.read<PostBloc>().add(const EndCommentSearchEvent());
                                          } else {
                                            showInputDialog<String>(
                                              context: context,
                                              title: l10n.searchComments,
                                              inputLabel: l10n.searchTerm,
                                              onSubmitted: ({payload, value}) {
                                                Navigator.of(context).pop();

                                                List<CommentEntity> commentMatches = [];

                                                /// Recursive function which checks if any child of the given [commentViewTrees] contains the query
                                                void findMatches(List<CommentViewTree> commentViewTrees) {
                                                  for (CommentViewTree commentViewTree in commentViewTrees) {
                                                    if (commentViewTree.commentEntity?.body.contains(RegExp(value!, caseSensitive: false)) == true) {
                                                      commentMatches.add(commentViewTree.commentEntity!);
                                                    }
                                                    findMatches(commentViewTree.replies);
                                                  }
                                                }

                                                // Find all comments which contain the query
                                                findMatches(state.comments);

                                                if (commentMatches.isEmpty) {
                                                  showSnackbar(context, l10n.noResultsFound);
                                                } else {
                                                  context.read<PostBloc>().add(StartCommentSearchEvent(commentMatches: commentMatches));
                                                }

                                                return Future.value(null);
                                              },
                                              getSuggestions: (_) => Future.value(const Iterable<String>.empty()),
                                              suggestionBuilder: (payload) => Container(),
                                            );
                                          }
                                        });
                                      },
                                      title: state.status == PostStatus.searchInProgress ? l10n.endSearch : PostFabAction.search.getTitle(context),
                                      icon: Icon(
                                        state.status == PostStatus.searchInProgress ? Icons.search_off_rounded : PostFabAction.search.getIcon(),
                                      ),
                                    ),
                                ],
                              )
                            : null,
                      ),
                    ),
                ],
              ),
              body: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  SafeArea(
                    child: BlocConsumer<PostBloc, PostState>(
                      listenWhen: (previous, current) {
                        if ((previous.status != PostStatus.failure && current.status == PostStatus.failure) || (previous.errorMessage != current.errorMessage)) {
                          setState(() => resetFailureMessage = true);
                        }
                        return true;
                      },
                      listener: (context, state) {
                        if (state.status == PostStatus.success && widget.postId != null && state.postViewMedia != null) {
                          // widget.onPostUpdated(state.postViewMedia!);
                        }
                      },
                      builder: (context, state) {
                        if (state.status == PostStatus.failure && resetFailureMessage == true) {
                          showSnackbar(
                            context,
                            state.errorMessage ?? l10n.missingErrorMessage,
                            backgroundColor: Theme.of(context).colorScheme.onErrorContainer,
                            leadingIcon: Icons.warning_rounded,
                            leadingIconColor: Theme.of(context).colorScheme.errorContainer,
                          );
                          WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
                            setState(() => resetFailureMessage = false);
                          });
                        }
                        switch (state.status) {
                          case PostStatus.initial:
                            // context
                            //     .read<PostBloc>()
                            //     .add(GetPostEvent(postViewMedia: widget.postViewMedia, postId: widget.postId, selectedCommentPath: widget.selectedCommentPath, selectedCommentId: widget.selectedCommentId));
                            return const Center(child: CircularProgressIndicator());
                          case PostStatus.loading:
                            return const Center(child: CircularProgressIndicator());
                          case PostStatus.refreshing:
                          case PostStatus.success:
                          case PostStatus.failure:
                          case PostStatus.searchInProgress:
                            if (state.postViewMedia != null) {
                              return RefreshIndicator(
                                onRefresh: () async {
                                  HapticFeedback.mediumImpact();
                                  // return context
                                  //     .read<PostBloc>()
                                  //     .add(GetPostEvent(postView: widget.postView, postId: widget.postId, selectedCommentId: state.selectedCommentId, selectedCommentPath: state.selectedCommentPath));
                                },
                                child: PostPageSuccess(
                                  postViewMedia: state.postViewMedia!,
                                  comments: state.comments,
                                  selectedCommentId: state.selectedCommentId,
                                  selectedCommentPath: state.selectedCommentPath,
                                  newlyCreatedCommentId: state.newlyCreatedCommentId,
                                  moddingCommentId: state.moddingCommentId,
                                  viewFullCommentsRefreshing: state.viewAllCommentsRefresh,
                                  itemScrollController: _itemScrollController,
                                  itemPositionsListener: _itemPositionsListener,
                                  hasReachedCommentEnd: state.hasReachedCommentEnd,
                                  moderators: [],
                                  crossPosts: [],
                                  scaffoldMessengerKey: _scaffoldMessengerKey,
                                ),
                              );
                            }
                            return ErrorMessage(
                              message: state.errorMessage,
                              action: () {
                                // context.read<PostBloc>().add(GetPostEvent(postEntity: widget.postView, postId: widget.postId, selectedCommentId: null));
                              },
                              actionText: l10n.refreshContent,
                            );
                          case PostStatus.empty:
                            return ErrorMessage(
                              message: state.errorMessage,
                              action: () {
                                // context.read<PostBloc>().add(GetPostEvent(postView: widget.postView, postId: widget.postId));
                              },
                              actionText: l10n.refreshContent,
                            );
                        }
                      },
                    ),
                  ),
                  AnimatedSwitcher(
                    duration: const Duration(milliseconds: 200),
                    child: isFabOpen
                        ? Listener(
                            onPointerUp: (details) {
                              context.read<UniunBloc>().add(const OnFabToggle(false));
                            },
                            child: Container(
                              color: theme.colorScheme.background.withOpacity(0.95),
                            ),
                          )
                        : null,
                  ),
                  if (enableFab)
                    SizedBox(
                      height: 70,
                      width: 70,
                      child: GestureDetector(
                        onVerticalDragUpdate: (details) {
                          if (details.delta.dy < -5) {
                            context.read<UniunBloc>().add(const OnFabSummonToggle(true));
                          }
                        },
                      ),
                    ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

//TODO: More or less duplicate from community_page.dart
  void showSortBottomSheet(BuildContext context, PostState state) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;

    showModalBottomSheet<void>(
      showDragHandle: true,
      context: context,
      builder: (builderContext) => CommentSortPicker(
        title: l10n.sortOptions,
        onSelect: (selected) {
          setState(() {
            sortType = selected.payload;
            sortTypeLabel = selected.label;
            sortTypeIcon = selected.icon;
          });
          // context.read<PostBloc>().add(
          //         //shouldn't this be GetPostCommentsEvent?
          //         GetPostEvent(
          //       postView: widget.postView,
          //       postId: widget.postId,
          //       sortType: sortType,
          //     ));
          //Navigator.of(context).pop();
        },
        previouslySelected: sortType,
      ),
    );
  }

  void replyToPost(BuildContext context, {bool postLocked = false}) async {
    final AppLocalizations l10n = AppLocalizations.of(context)!;

    if (postLocked) {
      showSnackbar(context, l10n.postLocked);
      return;
    }
    PostBloc postBloc = context.read<PostBloc>();
    UniunBloc uniunBloc = context.read<UniunBloc>();
    UserBloc userBloc = context.read<UserBloc>();

    final UniunState state = context.read<UniunBloc>().state;
    final bool reduceAnimations = state.reduceAnimations;

    // if (!userBloc.state.isLoggedIn) {
    //   showSnackbar(context, l10n.mustBeLoggedInComment);
    // } else {
    //   SharedPreferences prefs = (await UserPreferences.instance).sharedPreferences;
    //   DraftComment? newDraftComment;
    //   DraftComment? previousDraftComment;
    //   String draftId = '${LocalSettings.draftsCache.name}-${(widget.postView ?? postBloc.state.postView)!.postView.post.id}';
    //   String? draftCommentJson = prefs.getString(draftId);
    //   if (draftCommentJson != null) {
    //     previousDraftComment = DraftComment.fromJson(jsonDecode(draftCommentJson));
    //   }
    //   Timer timer = Timer.periodic(const Duration(seconds: 10), (Timer t) {
    //     if (newDraftComment?.isNotEmpty == true) {
    //       prefs.setString(draftId, jsonEncode(newDraftComment!.toJson()));
    //     }
    //   });

    //   Navigator.of(context)
    //       .push(
    //     SwipeablePageRoute(
    //       transitionDuration: reduceAnimations ? const Duration(milliseconds: 100) : null,
    //       canOnlySwipeFromEdge: true,
    //       backGestureDetectionWidth: 45,
    //       builder: (context) {
    //         return MultiBlocProvider(
    //             providers: [
    //               BlocProvider<PostBloc>.value(value: postBloc),
    //               BlocProvider<ThunderBloc>.value(value: thunderBloc),
    //               BlocProvider<AccountBloc>.value(value: accountBloc),
    //             ],
    //             child: CreateCommentPage(
    //               postView: widget.postView ?? postBloc.state.postView,
    //               previousDraftComment: previousDraftComment,
    //               onUpdateDraft: (c) => newDraftComment = c,
    //             ));
    //       },
    //     ),
    //   )
    //       .whenComplete(() async {
    //     timer.cancel();

    //     if (newDraftComment?.saveAsDraft == true && newDraftComment?.isNotEmpty == true) {
    //       await Future.delayed(const Duration(milliseconds: 300));
    //       showSnackbar(context, l10n.commentSavedAsDraft);
    //       prefs.setString(draftId, jsonEncode(newDraftComment!.toJson()));
    //     } else {
    //       prefs.remove(draftId);
    //     }
    //   });
    // }
  }
}
