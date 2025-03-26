import 'dart:async';
import 'dart:convert';

import 'package:fading_edge_scrollview/fading_edge_scrollview.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uniun/common/widgets/community_icon.dart';
import 'package:uniun/common/widgets/snackbar.dart';
import 'package:uniun/common/widgets/user_avatar.dart';
import 'package:uniun/core/bloc/thunder/thunder_bloc.dart';
import 'package:uniun/core/bloc/user/user_bloc.dart';
import 'package:uniun/core/enum/sort_type.dart';
import 'package:uniun/core/preferences.dart';
import 'package:uniun/core/widgets/error_message.dart';
import 'package:uniun/domain/entities/community/community_entity.dart';
import 'package:uniun/domain/entities/user/user_entity.dart';
import 'package:uniun/flutter_gen/gen_l10n/app_localizations.dart';
import 'package:uniun/posts/widgets/bottom_sheet_list_picker.dart';
import 'package:uniun/search/bloc/search_bloc.dart';
import 'package:uniun/search/utils/listing_type.dart';
import 'package:uniun/search/utils/search_type.dart';
import 'package:uniun/search/utils/search_utils.dart';
import 'package:uniun/search/widgets/search_action_chip.dart';
import 'package:uniun/utils/constants.dart';
import 'package:uniun/utils/debounce.dart';
import 'package:uniun/utils/global_context.dart';
import 'package:uniun/utils/numbers.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> with AutomaticKeepAliveClientMixin<SearchPage> {
  @override
  bool get wantKeepAlive => true;

  final TextEditingController _controller = TextEditingController();
  final _scrollController = ScrollController(initialScrollOffset: 0);
  // This exists only because it is required by FadingEdgeScrollView
  final ScrollController _searchFiltersScrollController = ScrollController();
  SharedPreferences? prefs;
  SortType sortType = SortType.active;
  // IconData? sortTypeIcon;
  // String? sortTypeLabel;
  final Set<CommunityEntity> newAnonymousSubscriptions = {};
  final Set<int> removedSubs = {};
  int _previousFocusSearchId = 0;
  final searchTextFieldFocus = FocusNode();
  int? _previousUserId;
  int? _previousFavoritesCount;

  SearchType _currentSearchType = SearchType.communities;
  ListingType _currentFeedType = ListingType.all;
  IconData? _feedTypeIcon = Icons.grid_view_rounded;
  String? _feedTypeLabel = AppLocalizations.of(GlobalContext.context)!.all;
  bool _searchByUrl = false;
  String _searchUrlLabel = AppLocalizations.of(GlobalContext.context)!.text;
  String? _currentCommunityFilterName;
  int? _currentCommunityFilter;
  String? _currentCreatorFilterName;
  int? _currentCreatorFilter;

  @override
  void initState() {
    _scrollController.addListener(_onScroll);
    initPrefs();
    context.read<SearchBloc>().add(GetTrendingCommunitiesEvent());
    super.initState();
  }

  Future<void> initPrefs() async {
    prefs = (await UserPreferences.instance).sharedPreferences;
    setState(() {
      sortType = SortType.values.byName(prefs!.getString("search_default_sort_type") ?? DEFAULT_SEARCH_SORT_TYPE.name);
      // final sortTypeItem = allSortTypeItems.firstWhere((sortTypeItem) => sortTypeItem.payload == sortType);
      // sortTypeIcon = sortTypeItem.icon;
      // sortTypeLabel = sortTypeItem.label;
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _scrollController.dispose();

    super.dispose();
  }

  @override
  void deactivate() {
    // _saveToDB();
    super.deactivate();
  }

  void _onScroll() {
    if (_scrollController.position.pixels >= _scrollController.position.maxScrollExtent * 0.8) {
      if (context.read<SearchBloc>().state.status != SearchStatus.done) {
        context.read<SearchBloc>().add(ContinueSearchEvent(
              query: _controller.text,
              sortType: sortType,
              listingType: _currentFeedType,
              searchType: _getSearchTypeToUse(),
              communityId: _currentCommunityFilter,
              creatorId: _currentCreatorFilter,
              favoriteCommunities: [],
            ));
      }
    }
  }

  void resetTextField() {
    searchTextFieldFocus.requestFocus();
    _controller.clear(); // Clear the search field
  }

  _onChange(BuildContext context, String value) {
    if (_currentSearchType == SearchType.posts && Uri.tryParse(value)?.isAbsolute == true) {
      setState(() {
        _searchByUrl = true;
        _searchUrlLabel = AppLocalizations.of(context)!.url;
      });
    }

    _doSearch();
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context)!;

    super.build(context);

    final bool isUserLoggedIn = context.read<UserBloc>().state.isLoggedIn;
    // final String? accountInstance = context.read<AuthBloc>().state.account?.instance;
    // final String currentAnonymousInstance = context.read<ThunderBloc>().state.currentAnonymousInstance;

    return MultiBlocListener(
      listeners: [
        // BlocListener<FeedBloc, FeedState>(listener: (context, state) => setState(() {})),
        // BlocListener<AnonymousSubscriptionsBloc, AnonymousSubscriptionsState>(listener: (context, state) {}),
        // BlocListener<SearchBloc, SearchState>(listener: (context, state) {
        //   context.read<FeedBloc>().add(PopulatePostsEvent(state.posts ?? []));
        // }),
        // BlocListener<AccountBloc, AccountState>(listener: (context, state) async {
        //   final Account? activeProfile = await fetchActiveProfileAccount();
    
        //   // When account changes, that means our instance most likely changed, so reset search.
        //   if (state.status == AccountStatus.success &&
        //           ((activeProfile?.userId == null && _previousUserId != null) || state.personView?.person.id == activeProfile?.userId && _previousUserId != state.personView?.person.id) ||
        //       (state.favorites.length != _previousFavoritesCount && _controller.text.isEmpty)) {
        //     _controller.clear();
        //     if (context.mounted) context.read<SearchBloc>().add(ResetSearch());
        //     setState(() {});
        //     _previousUserId = activeProfile?.userId;
        //     _previousFavoritesCount = state.favorites.length;
        //   }
        // }),
        BlocListener<ThunderBloc, ThunderState>(
          listener: (context, state) {
            _controller.clear();
            context.read<SearchBloc>().add(ResetSearch());
            setState(() {});
            _previousUserId = null;
          },
        ),
      ],
      child: BlocBuilder<SearchBloc, SearchState>(
        builder: (context, state) {
          if (state.focusSearchId > _previousFocusSearchId) {
            searchTextFieldFocus.requestFocus();
            _previousFocusSearchId = state.focusSearchId;
          }
    
          return Scaffold(
            appBar: AppBar(
                toolbarHeight: 90.0,
                scrolledUnderElevation: 0.0,
                title: Material(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(50),
                  elevation: 8,
                  child: Stack(
                    children: [
                      TextField(
                        keyboardType: TextInputType.url,
                        focusNode: searchTextFieldFocus,
                        onChanged: (value) => debounce(const Duration(milliseconds: 300), _onChange, [context, value]),
                        controller: _controller,
                        onTap: () {
                          HapticFeedback.selectionClick();
                        },
                        decoration: InputDecoration(
                          fillColor: Theme.of(context).searchViewTheme.backgroundColor,
                          hintText: _currentSearchType.toString(),
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: const BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                          ),
                          suffixIcon: _controller.text.isNotEmpty
                              ? SizedBox(
                                  width: 50,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      IconButton(
                                        icon: Icon(
                                          Icons.close,
                                          semanticLabel: l10n.clearSearch,
                                        ),
                                        onPressed: () {
                                          resetTextField();
                                          context.read<SearchBloc>().add(ResetSearch());
                                        },
                                      ),
                                    ],
                                  ),
                                )
                              : null,
                          prefixIcon: const Icon(Icons.search_rounded),
                        ),
                      ),
                    ],
                  ),
                )),
            body: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 10, right: 15),
                  child: FadingEdgeScrollView.fromSingleChildScrollView(
                    gradientFractionOnStart: 0.1,
                    gradientFractionOnEnd: 0.1,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      controller: _searchFiltersScrollController,
                      child: Row(
                        children: [
                          SearchActionChip(
                            children: [
                              Text(_currentSearchType.name.capitalize),
                              const Icon(Icons.arrow_drop_down_rounded, size: 20),
                            ],
                            onPressed: () {
                              showModalBottomSheet(
                                context: context,
                                showDragHandle: true,
                                builder: (ctx) => BottomSheetListPicker(
                                  title: l10n.selectSearchType,
                                  items: [
                                    ListPickerItem(label: l10n.communities, payload: SearchType.communities, icon: Icons.people_rounded),
                                    ListPickerItem(label: l10n.users, payload: SearchType.users, icon: Icons.person_rounded),
                                    ListPickerItem(label: l10n.posts, payload: SearchType.posts, icon: Icons.wysiwyg_rounded),
                                    ListPickerItem(label: l10n.comments, payload: SearchType.comments, icon: Icons.chat_rounded),
                                  ],
                                  onSelect: (value) => _setCurrentSearchType(value.payload),
                                  previouslySelected: _currentSearchType,
                                ),
                              );
                            },
                          ),
                          const SizedBox(width: 10),
                          if (_currentSearchType == SearchType.posts) ...[
                            SearchActionChip(
                              children: [
                                const Icon(Icons.link_rounded, size: 15),
                                const SizedBox(width: 5),
                                Text(_searchUrlLabel),
                                const Icon(Icons.arrow_drop_down_rounded, size: 20),
                              ],
                              onPressed: () {
                                showModalBottomSheet(
                                  context: context,
                                  showDragHandle: true,
                                  builder: (ctx) => BottomSheetListPicker(
                                    title: l10n.searchPostSearchType,
                                    items: [
                                      ListPickerItem(label: l10n.searchByText, payload: 'text', icon: Icons.wysiwyg_rounded),
                                      ListPickerItem(label: l10n.searchByUrl, payload: 'url', icon: Icons.link_rounded),
                                    ],
                                    onSelect: (value) {
                                      setState(() {
                                        _searchByUrl = value.payload == 'url';
                                        _searchUrlLabel = value.payload == 'url' ? l10n.url : l10n.text;
                                      });
                                      _doSearch();
                                    },
                                    previouslySelected: _searchByUrl ? 'url' : 'text',
                                  ),
                                );
                              },
                            ),
                            const SizedBox(width: 10),
                          ],
                          // SearchActionChip(
                          //   children: [
                          //     Icon(sortTypeIcon, size: 15),
                          //     const SizedBox(width: 5),
                          //     Text(sortTypeLabel ?? l10n.sortBy),
                          //     const Icon(Icons.arrow_drop_down_rounded, size: 20),
                          //   ],
                          //   onPressed: () => showSortBottomSheet(context),
                          // ),
                          const SizedBox(width: 10),
                          SearchActionChip(
                            children: [
                              Icon(_feedTypeIcon, size: 15),
                              const SizedBox(width: 5),
                              Text(_feedTypeLabel ?? l10n.feed),
                              const Icon(Icons.arrow_drop_down_rounded, size: 20),
                            ],
                            onPressed: () {
                              showModalBottomSheet(
                                context: context,
                                showDragHandle: true,
                                builder: (ctx) => BottomSheetListPicker(
                                  title: l10n.selectFeedType,
                                  items: [
                                    ListPickerItem(label: l10n.subscribed, payload: ListingType.subscribed, icon: Icons.view_list_rounded),
                                    ListPickerItem(label: l10n.local, payload: ListingType.local, icon: Icons.home_rounded),
                                    ListPickerItem(label: l10n.all, payload: ListingType.all, icon: Icons.grid_view_rounded)
                                  ],
                                  onSelect: (value) {
                                    setState(() {
                                      if (value.payload == ListingType.subscribed) {
                                        _feedTypeLabel = l10n.subscribed;
                                        _feedTypeIcon = Icons.view_list_rounded;
                                      } else if (value.payload == ListingType.local) {
                                        _feedTypeLabel = l10n.local;
                                        _feedTypeIcon = Icons.home_rounded;
                                      } else if (value.payload == ListingType.all) {
                                        _feedTypeLabel = l10n.all;
                                        _feedTypeIcon = Icons.grid_view_rounded;
                                      }
                                      _currentFeedType = value.payload;
                                    });
                                    _doSearch();
                                  },
                                  previouslySelected: _currentFeedType,
                                ),
                              );
                            },
                          ),
                          const SizedBox(width: 10),
                          // SearchActionChip(
                          //   backgroundColor: _currentCommunityFilter == null ? null : theme.colorScheme.primaryContainer.withOpacity(0.25),
                          //   children: [
                          //     const Icon(Icons.people_rounded, size: 15),
                          //     const SizedBox(width: 5),
                          //     Text(_currentCommunityFilter == null ? l10n.community : l10n.filteringBy(_currentCommunityFilterName ?? '')),
                          //     if (_currentCommunityFilter != null) const SizedBox(width: 5),
                          //     Icon(_currentCommunityFilter == null ? Icons.arrow_drop_down_rounded : Icons.close_rounded, size: _currentCommunityFilter == null ? 20 : 15),
                          //   ],
                          //   onPressed: () {
                          //     if (_currentCommunityFilter != null) {
                          //       setState(() {
                          //         _currentCommunityFilter = null;
                          //         _currentCommunityFilterName = null;
                          //       });
                          //       _doSearch();
                          //     } else {
                          //       showCommunityInputDialog(context, title: l10n.community, onCommunitySelected: (communityView) {
                          //         setState(() {
                          //           _currentCommunityFilter = communityView.community.id;
                          //           _currentCommunityFilterName = generateCommunityFullName(context, communityView.community.name, fetchInstanceNameFromUrl(communityView.community.actorId));
                          //         });
                          //         _doSearch();
                          //       });
                          //     }
                          //   },
                          // ),
                          const SizedBox(width: 10),
                          // SearchActionChip(
                          //   backgroundColor: _currentCreatorFilter == null ? null : theme.colorScheme.primaryContainer.withOpacity(0.25),
                          //   children: [
                          //     const Icon(Icons.person_rounded, size: 15),
                          //     const SizedBox(width: 5),
                          //     Text(_currentCreatorFilter == null ? l10n.creator : l10n.filteringBy(_currentCreatorFilterName ?? '')),
                          //     if (_currentCreatorFilter != null) const SizedBox(width: 5),
                          //     Icon(_currentCreatorFilter == null ? Icons.arrow_drop_down_rounded : Icons.close_rounded, size: _currentCreatorFilter == null ? 20 : 15),
                          //   ],
                          //   onPressed: () {
                          //     if (_currentCreatorFilter != null) {
                          //       setState(() {
                          //         _currentCreatorFilter = null;
                          //         _currentCreatorFilterName = null;
                          //       });
                          //       _doSearch();
                          //     } else {
                          //       showUserInputDialog(context, title: l10n.creator, onUserSelected: (personView) {
                          //         setState(() {
                          //           _currentCreatorFilter = personView.person.id;
                          //           _currentCreatorFilterName = generateUserFullName(context, personView.person.name, fetchInstanceNameFromUrl(personView.person.actorId));
                          //         });
                          //         _doSearch();
                          //       });
                          //     }
                          //   },
                          // ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 60),
                  child: _getSearchBody(context, state, isUserLoggedIn),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _getSearchBody(BuildContext context, SearchState state, bool isUserLoggedIn) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    final ThunderBloc thunderBloc = context.watch<ThunderBloc>();
    final bool tabletMode = thunderBloc.state.tabletMode;

    switch (state.status) {
      case SearchStatus.initial:
      case SearchStatus.trending:
        return AnimatedCrossFade(
          duration: const Duration(milliseconds: 250),
          crossFadeState: state.trendingCommunities?.isNotEmpty == true && _currentSearchType == SearchType.communities ? CrossFadeState.showSecond : CrossFadeState.showFirst,
          firstChild: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Icon(Icons.search_rounded, size: 80, color: theme.dividerColor),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Text(
                  switch (_currentSearchType) {
                    SearchType.communities => 'Search for communities',
                    SearchType.users => 'Search for users',
                    SearchType.comments => 'Search for comments',
                    SearchType.posts => 'Search for posts',
                    _ => '',
                  },
                  textAlign: TextAlign.center,
                  style: theme.textTheme.titleMedium?.copyWith(color: theme.dividerColor),
                ),
              ),
            ],
          ),
          secondChild: state.trendingCommunities?.isNotEmpty == true
              ? SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // if (context.read<AccountBloc>().state.favorites.isNotEmpty) ...[
                      //   Padding(
                      //     padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      //     child: Text(
                      //       l10n.favorites,
                      //       style: theme.textTheme.titleLarge,
                      //     ),
                      //   ),
                      //   ListView.builder(
                      //     physics: const NeverScrollableScrollPhysics(),
                      //     shrinkWrap: true,
                      //     itemCount: context.read<AccountBloc>().state.favorites.length,
                      //     itemBuilder: (BuildContext context, int index) {
                      //       CommunityView communityView = context.read<AccountBloc>().state.favorites[index];
                      //       final Set<int> currentSubscriptions = context.read<AnonymousSubscriptionsBloc>().state.ids;
                      //       return _buildCommunityEntry(communityView, isUserLoggedIn, currentSubscriptions, indicateFavorites: false);
                      //     },
                      //   ),
                      //   const SizedBox(height: 20),
                      // ],
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                        child: Text(
                          l10n.trendingCommunities,
                          style: theme.textTheme.titleLarge,
                        ),
                      ),
                      ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: state.trendingCommunities!.length,
                        itemBuilder: (BuildContext context, int index) {
                          CommunityEntity communityView = state.trendingCommunities![index];
                          return _buildCommunityEntry(communityView, isUserLoggedIn);
                        },
                      ),
                    ],
                  ),
                )
              : Container(),
        );
      case SearchStatus.loading:
        return const Center(child: CircularProgressIndicator());
      case SearchStatus.refreshing:
      case SearchStatus.success:
      case SearchStatus.done:
      case SearchStatus.performingCommentAction:
        if (searchIsEmpty(_currentSearchType, searchState: state)) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${switch (_currentSearchType) {
                    SearchType.communities => l10n.noCommunitiesFound,
                    SearchType.users => l10n.noUsersFound,
                    SearchType.comments => l10n.noCommentsFound,
                    SearchType.posts => l10n.noPostsFound,
                    _ => '',
                  }} ${l10n.trySearchingFor}',
                  textAlign: TextAlign.center,
                  style: theme.textTheme.titleMedium?.copyWith(color: theme.dividerColor),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (_currentSearchType != SearchType.communities) ...[
                      SearchActionChip(
                        children: [Text(l10n.communities)],
                        onPressed: () => _setCurrentSearchType(SearchType.communities),
                      ),
                      const SizedBox(width: 5),
                    ],
                    if (_currentSearchType != SearchType.users)
                      SearchActionChip(
                        children: [Text(l10n.users)],
                        onPressed: () => _setCurrentSearchType(SearchType.users),
                      ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (_currentSearchType != SearchType.posts) ...[
                      SearchActionChip(
                        children: [Text(l10n.posts)],
                        onPressed: () => _setCurrentSearchType(SearchType.posts),
                      ),
                      const SizedBox(width: 5),
                    ],
                    if (_currentSearchType != SearchType.comments)
                      SearchActionChip(
                        children: [Text(l10n.comments)],
                        onPressed: () => _setCurrentSearchType(SearchType.comments),
                      ),
                  ],
                ),
              ],
            ),
          );
        }
        if (_currentSearchType == SearchType.communities) {
          return FadingEdgeScrollView.fromScrollView(
            gradientFractionOnEnd: 0,
            child: ListView.builder(
              controller: _scrollController,
              itemCount: state.communities!.length + 1,
              itemBuilder: (BuildContext context, int index) {
                if (index == state.communities!.length) {
                  return state.status == SearchStatus.refreshing
                      ? const Center(
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: CircularProgressIndicator(),
                          ),
                        )
                      : Container();
                } else {
                  CommunityEntity communityView = state.communities![index];
                  return _buildCommunityEntry(communityView, isUserLoggedIn);
                }
              },
            ),
          );
        } else if (_currentSearchType == SearchType.users) {
          return FadingEdgeScrollView.fromScrollView(
            gradientFractionOnEnd: 0,
            child: ListView.builder(
              controller: _scrollController,
              itemCount: state.users!.length + 1,
              itemBuilder: (BuildContext context, int index) {
                if (index == state.users!.length) {
                  return state.status == SearchStatus.refreshing
                      ? const Center(
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: CircularProgressIndicator(),
                          ),
                        )
                      : Container();
                } else {
                  UserEntity personView = state.users![index];
                  return _buildUserEntry(personView);
                }
              },
            ),
          );
        } else if (_currentSearchType == SearchType.comments) {
          // return FadingEdgeScrollView.fromScrollView(
          //   gradientFractionOnEnd: 0,
          //   child: ListView.builder(
          //     controller: _scrollController,
          //     itemCount: state.comments!.length + 1,
          //     itemBuilder: (BuildContext context, int index) {
          //       if (index == state.comments!.length) {
          //         return state.status == SearchStatus.refreshing
          //             ? const Center(
          //                 child: Padding(
          //                   padding: EdgeInsets.only(bottom: 10),
          //                   child: CircularProgressIndicator(),
          //                 ),
          //               )
          //             : Container();
          //       } else {
          //         CommentView commentView = state.comments![index];
          //         return Column(
          //           children: [
          //             Divider(
          //               height: 1.0,
          //               thickness: 1.0,
          //               color: ElevationOverlay.applySurfaceTint(
          //                 Theme.of(context).colorScheme.surface,
          //                 Theme.of(context).colorScheme.surfaceTint,
          //                 10,
          //               ),
          //             ),
          //             _buildCommentEntry(context, commentView),
          //           ],
          //         );
          //       }
          //     },
          //   ),
          // );
          return Center(child: Text('Comments not implemented yet'));
        } else if (_currentSearchType == SearchType.posts) {
          // return FadingEdgeScrollView.fromScrollView(
          //   gradientFractionOnEnd: 0,
          //   child: CustomScrollView(
          //     controller: _scrollController,
          //     slivers: [
          //       FeedPostList(postViewMedias: state.posts ?? [], tabletMode: tabletMode),
          //       if (state.status == SearchStatus.refreshing)
          //         const SliverToBoxAdapter(
          //           child: Center(
          //             child: Padding(
          //               padding: EdgeInsets.only(bottom: 10),
          //               child: CircularProgressIndicator(),
          //             ),
          //           ),
          //         ),
          //     ],
          //   ),
          // );
          return Center(child: Text('Posts not implemented yet'));
        } else {
          return Container();
        }
      case SearchStatus.empty:
        return Center(child: Text(l10n.empty));
      case SearchStatus.failure:
        return ErrorMessage(
          message: state.errorMessage,
          action: _doSearch,
          actionText: l10n.retry,
        );
    }
  }

  Widget _buildCommunityEntry(CommunityEntity communityEntity, bool isUserLoggedIn, {bool indicateFavorites = true}) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;

    return ListTile(
      key: Key(communityEntity.communityId.toString()),
      leading: CommunityIcon(community: communityEntity, radius: 25),
      title: Row(
        children: [
          Text(
            communityEntity.name ?? '',
            overflow: TextOverflow.ellipsis,
          ),
          Text(
          ' · ${formatLongNumber(communityEntity.memberCount)}',
          semanticsLabel: l10n.countSubscribers(communityEntity.memberCount),
          ),
          const SizedBox(width: 4),
          const Icon(Icons.people_rounded, size: 16.0),
        ],
      ),
      trailing: IconButton(
        onPressed: () {
          if (isUserLoggedIn) {
            context.read<SearchBloc>().add(ChangeCommunitySubsciptionStatusEvent(
                  communityId: communityEntity.communityId,
                  follow: communityEntity.isMember ? false : true,
                  query: _controller.text,
                ));
            showSnackbar(context, communityEntity.isMember ?  l10n.removedCommunityFromSubscriptions: l10n.addedCommunityToSubscriptions );
            return;
          } else {
            showSnackbar(context, 'You must be logged in to subscribe to a community.');
          }
        },
        icon: Icon(
          communityEntity.isMember
              ? Icons.remove_circle_outline_rounded
              : Icons.add_circle_outline_rounded,
        ),
        visualDensity: VisualDensity.compact,
      ),
      onTap: () {
        context.go('/community/${communityEntity.communityId}');
      },
    );
  }

  // bool _getFavoriteStatus(BuildContext context, Community community) {
  //   final AccountState accountState = context.read<AccountBloc>().state;
  //   return accountState.favorites.any((communityView) => communityView.community.id == community.id);
  // }

  Widget _buildUserEntry(UserEntity userEntity) {
    return ListTile(
      leading: UserAvatar(user: userEntity, radius: 25),
      title: Text(
        userEntity.username,
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: Row(children: [
        Flexible(
          child: Text(
            userEntity.name,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ]),
      onTap: () {
        context.go('/user/${userEntity.userID}');
      },
    );
  }

  // Widget _buildCommentEntry(BuildContext context, CommentView commentView) {
  //   final AppLocalizations l10n = AppLocalizations.of(context)!;
  //   final bool isOwnComment = commentView.creator.id == context.read<AuthBloc>().state.account?.userId;

  //   return BlocProvider<post_bloc.PostBloc>(
  //     create: (BuildContext context) => post_bloc.PostBloc(),
  //     child: CommentReference(
  //       comment: commentView,
  //       now: DateTime.now().toUtc(),
  //       onVoteAction: (int commentId, int voteType) => context.read<SearchBloc>().add(VoteCommentEvent(commentId: commentId, score: voteType)),
  //       onSaveAction: (int commentId, bool save) => context.read<SearchBloc>().add(SaveCommentEvent(commentId: commentId, save: save)),
  //       // Only swipe actions are supported here, and delete is not one of those, so no implementation
  //       onDeleteAction: (int commentId, bool deleted) {},
  //       // Only swipe actions are supported here, and report is not one of those, so no implementation
  //       onReportAction: (int commentId) {},
  //       onReplyEditAction: (CommentView commentView, bool isEdit) async {
  //         ThunderBloc thunderBloc = context.read<ThunderBloc>();
  //         AccountBloc accountBloc = context.read<AccountBloc>();

  //         final ThunderState state = context.read<ThunderBloc>().state;
  //         final bool reduceAnimations = state.reduceAnimations;

  //         SharedPreferences prefs = (await UserPreferences.instance).sharedPreferences;
  //         DraftComment? newDraftComment;
  //         DraftComment? previousDraftComment;
  //         String draftId = '${LocalSettings.draftsCache.name}-${commentView.comment.id}';
  //         String? draftCommentJson = prefs.getString(draftId);
  //         if (draftCommentJson != null) {
  //           previousDraftComment = DraftComment.fromJson(jsonDecode(draftCommentJson));
  //         }
  //         Timer timer = Timer.periodic(const Duration(seconds: 10), (Timer t) {
  //           if (newDraftComment?.isNotEmpty == true) {
  //             prefs.setString(draftId, jsonEncode(newDraftComment!.toJson()));
  //           }
  //         });

  //         if (context.mounted) {
  //           Navigator.of(context)
  //               .push(
  //             SwipeablePageRoute(
  //               transitionDuration: reduceAnimations ? const Duration(milliseconds: 100) : null,
  //               canOnlySwipeFromEdge: true,
  //               backGestureDetectionWidth: 45,
  //               builder: (context) {
  //                 return MultiBlocProvider(
  //                     providers: [
  //                       BlocProvider<ThunderBloc>.value(value: thunderBloc),
  //                       BlocProvider<AccountBloc>.value(value: accountBloc),
  //                     ],
  //                     child: CreateCommentPage(
  //                       commentView: commentView,
  //                       isEdit: isEdit,
  //                       parentCommentAuthor: commentView.creator.name,
  //                       previousDraftComment: previousDraftComment,
  //                       onUpdateDraft: (c) => newDraftComment = c,
  //                     ));
  //               },
  //             ),
  //           )
  //               .whenComplete(
  //             () async {
  //               timer.cancel();

  //               if (newDraftComment?.saveAsDraft == true && newDraftComment?.isNotEmpty == true && (!isEdit || commentView.comment.content != newDraftComment?.text)) {
  //                 await Future.delayed(const Duration(milliseconds: 300));
  //                 if (context.mounted) showSnackbar(context, l10n.commentSavedAsDraft);
  //                 prefs.setString(draftId, jsonEncode(newDraftComment!.toJson()));
  //               } else {
  //                 prefs.remove(draftId);
  //               }
  //             },
  //           );
  //         }
  //       },
  //       isOwnComment: isOwnComment,
  //     ),
  //   );
  // }

  // void showSortBottomSheet(BuildContext context) {
  //   final AppLocalizations l10n = AppLocalizations.of(context)!;

  //   showModalBottomSheet(
  //     context: context,
  //     showDragHandle: true,
  //     isScrollControlled: true,
  //     builder: (builderContext) => SortPicker(
  //       title: l10n.sortOptions,
  //       onSelect: (selected) {
  //         setState(() {
  //           sortType = selected.payload;
  //           sortTypeIcon = selected.icon;
  //           sortTypeLabel = selected.label;
  //         });

  //         prefs!.setString("search_default_sort_type", selected.payload.name);

  //         _doSearch();
  //       },
  //       previouslySelected: sortType,
  //     ),
  //   );
  // }

  // SubscribedType _getCurrentSubscriptionStatus(bool isUserLoggedIn, CommunityView communityView, Set<int> currentSubscriptions) {
  //   if (isUserLoggedIn) {
  //     return communityView.subscribed;
  //   }
  //   bool isSubscribed = newAnonymousSubscriptions.contains(communityView.community) || (currentSubscriptions.contains(communityView.community.id) && !removedSubs.contains(communityView.community.id));
  //   return isSubscribed ? SubscribedType.subscribed : SubscribedType.notSubscribed;
  // }

  // void _onSubscribeIconPressed(bool isUserLoggedIn, BuildContext context, CommunityEntity communityView) {
  //   if (isUserLoggedIn) {
  //     context.read<SearchBloc>().add(ChangeCommunitySubsciptionStatusEvent(
  //           communityId: communityView.community.id,
  //           follow: communityView.subscribed == SubscribedType.notSubscribed ? true : false,
  //           query: _controller.text,
  //         ));
  //     return;
  //   }

  //   // Set<int> currentSubscriptions = context.read<AnonymousSubscriptionsBloc>().state.ids;
  //   // setState(() {
  //   //   if (currentSubscriptions.contains(communityView.community.id) && !removedSubs.contains(communityView.community.id)) {
  //   //     removedSubs.add(communityView.community.id);
  //   //   } else if (newAnonymousSubscriptions.contains(communityView.community)) {
  //   //     newAnonymousSubscriptions.remove(communityView.community);
  //   //   } else if (removedSubs.contains(communityView.community.id)) {
  //   //     removedSubs.remove(communityView.community.id);
  //   //   } else {
  //   //     newAnonymousSubscriptions.add(communityView.community);
  //   //   }
  //   // });
  //   return;
  // }

  // void _saveToDB() {
  //   if (newAnonymousSubscriptions.isNotEmpty) {
  //     context.read<AnonymousSubscriptionsBloc>().add(AddSubscriptionsEvent(communities: newAnonymousSubscriptions));
  //   }
  //   if (removedSubs.isNotEmpty) {
  //     context.read<AnonymousSubscriptionsBloc>().add(DeleteSubscriptionsEvent(ids: removedSubs));
  //   }
  // }

  SearchType _getSearchTypeToUse() {
    if (_currentSearchType == SearchType.posts && _searchByUrl) {
      return SearchType.url;
    }
    return _currentSearchType;
  }

  void _doSearch() {
    if (_controller.text.isNotEmpty) {
      context.read<SearchBloc>().add(StartSearchEvent(
            query: _controller.text,
            sortType: sortType,
            listingType: _currentFeedType,
            searchType: _getSearchTypeToUse(),
            communityId: _currentCommunityFilter,
            creatorId: _currentCreatorFilter,
            favoriteCommunities: [],
          ));
    } else {
      context.read<SearchBloc>().add(ResetSearch());
    }
  }

  void _setCurrentSearchType(SearchType newCurrentSearchType) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;

    setState(() {
      _currentSearchType = newCurrentSearchType;

      if (_currentSearchType == SearchType.posts && Uri.tryParse(_controller.text)?.isAbsolute == true) {
        _searchByUrl = true;
        _searchUrlLabel = l10n.url;
      }
    });

    _doSearch();
  }
}
