import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sliver_tools/sliver_tools.dart';
import 'package:uniun/common/locator.dart';
import 'package:uniun/common/widgets/community_icon.dart';
import 'package:uniun/common/widgets/icon_text.dart';
import 'package:uniun/common/widgets/scalable_text.dart';
import 'package:uniun/community/bloc/community_cubit.dart';
import 'package:uniun/community/bloc/community_feed_cubit.dart';
import 'package:uniun/community/bloc/community_state.dart';
import 'package:uniun/community/pages/feed_widget.dart';
import 'package:uniun/community/widgets/community_sidebar.dart';
import 'package:uniun/core/bloc/thunder/thunder_bloc.dart';
import 'package:uniun/core/bloc/user/user_bloc.dart';
import 'package:uniun/domain/entities/community/community_entity.dart';
import 'package:uniun/domain/usecases/community_usecase.dart';
import 'package:uniun/utils/numbers.dart';

class CommunityPage extends StatelessWidget {
  final int id;
  const CommunityPage({
    super.key,
    required this.id,
  });
  @override
  Widget build(Object context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => getIt<CommunityCubit>(param1: id)..getCommunity(),
        ),
        BlocProvider(
          create: (_) =>
              getIt<CommunityFeedCubit>(param1: id)..getCommunityFeed(),
        ),
      ],
      child: const CommunityPageInner(),
    );
  }
}

class CommunityPageInner extends StatefulWidget {
  const CommunityPageInner({Key? key}) : super(key: key);

  @override
  _CommunityPageState createState() => _CommunityPageState();
}

class _CommunityPageState extends State<CommunityPageInner> {
  final ScrollController _scrollController = ScrollController();
  bool showAppBarTitle = false;
  bool showCommunitySidebar = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels > 100.0 &&
          showAppBarTitle == false) {
        setState(() => showAppBarTitle = true);
      } else if (_scrollController.position.pixels < 100.0 &&
          showAppBarTitle == true) {
        setState(() => showAppBarTitle = false);
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final communityCubit = context.watch<CommunityCubit>();
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () { 
          context.push('community/createPost');
       },
       child: const Icon(Icons.add)
       ),
      body: RefreshIndicator(
        onRefresh: () async {
          context.read<CommunityCubit>().getCommunity();
        },
        child: CustomScrollView(
          controller: _scrollController,
          slivers: [
            SliverAppBar(
              floating: true,
              pinned: true,
              title: FeedAppBarTitle(
                visible: showAppBarTitle,
              ),
              leading: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios_new_rounded,
                  semanticLabel:
                      MaterialLocalizations.of(context).backButtonTooltip,
                ),
                onPressed: () {
                  Navigator.of(context).maybePop();
                },
              ),
              actions: [
                context.read<UserBloc>().state.isLoggedIn ? 
                IconButton(
                  icon: Icon(context.read<CommunityCubit>().state.map(
                      initial: (_) => Icons.pending_outlined,
                      loading: (_) => Icons.pending_outlined,
                      success: (state) => state.communityEntity.isMember
                          ? Icons.remove_circle_outline_rounded
                          : Icons.add_circle_outline_rounded,
                      failure: (_) => Icons.pending_outlined)),
                  onPressed: () {
                    HapticFeedback.mediumImpact();
                  },
                ): Container(),
                IconButton(
                    icon: Icon(Icons.sort),
                    onPressed: () {
                      HapticFeedback.mediumImpact();
                    }),
                IconButton(
                    icon: Icon(Icons.share_rounded, size: 20),
                    onPressed: () {
                      HapticFeedback.mediumImpact();
                    })
              ],
            ),
            communityCubit.state.map<Widget>(
                initial: (_) => const SliverToBoxAdapter(
                      child: Center(child: CircularProgressIndicator()),
                    ),
                loading: (_) => SliverToBoxAdapter(
                      child: Container(),
                    ),
                success: (state) => SliverToBoxAdapter(
                      child: CommunityHeader(
                        community: state.communityEntity,
                        showCommunitySidebar: showCommunitySidebar,
                        onToggle: (bool toggled) {
                          // Scroll to top first before showing the sidebar
                          _scrollController.animateTo(0,
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeInOut);
                          setState(() => showCommunitySidebar = toggled);
                        },
                      ),
                    ),
                failure: (error) => SliverToBoxAdapter(
                      child: Container(),
                    )),
            SliverStack(
              // defaults to false
              insetOnOverlap: true,
              children: <Widget>[
                const FeedPostList(),
                SliverToBoxAdapter(
                  child: AnimatedSwitcher(
                    switchInCurve: Curves.easeOut,
                    switchOutCurve: Curves.easeOut,
                    transitionBuilder: (child, animation) {
                      return FadeTransition(
                        opacity: Tween<double>(begin: 0.0, end: 1.0).animate(
                          CurvedAnimation(
                              parent: animation, curve: const Interval(0, 1.0)),
                        ),
                        child: child,
                      );
                    },
                    duration: const Duration(milliseconds: 300),
                    child: showCommunitySidebar
                        ? GestureDetector(
                            onTap: () => setState(() =>
                                showCommunitySidebar = !showCommunitySidebar),
                            child: Container(
                              height: MediaQuery.of(context).size.height,
                              width: MediaQuery.of(context).size.width,
                              color: Colors.black.withOpacity(0.5),
                            ),
                          )
                        : null,
                  ),
                ),
                SliverToBoxAdapter(
                  child: AnimatedSwitcher(
                    switchInCurve: Curves.easeOut,
                    switchOutCurve: Curves.easeOut,
                    transitionBuilder: (child, animation) {
                      return FadeTransition(
                        opacity: Tween<double>(begin: 0.0, end: 1.0).animate(
                          CurvedAnimation(
                              parent: animation, curve: const Interval(0, 1.0)),
                        ),
                        child: child,
                      );
                    },
                    duration: const Duration(milliseconds: 300),
                    child: showCommunitySidebar
                        ? GestureDetector(
                            onTap: () => setState(() =>
                                showCommunitySidebar = !showCommunitySidebar),
                            child: Container(
                              height: MediaQuery.of(context).size.height,
                              width: MediaQuery.of(context).size.width,
                              color: Colors.black.withOpacity(0.5),
                            ),
                          )
                        : null,
                  ),
                ),
                // Contains the widget for the community sidebar
                SliverToBoxAdapter(
                  child: AnimatedSwitcher(
                    switchInCurve: Curves.easeOut,
                    switchOutCurve: Curves.easeOut,
                    transitionBuilder: (child, animation) {
                      return SlideTransition(
                        position: Tween<Offset>(
                                begin: const Offset(1.2, 0),
                                end: const Offset(0, 0))
                            .animate(animation),
                        child: child,
                      );
                    },
                    duration: const Duration(milliseconds: 300),
                    child: showCommunitySidebar
                        ? CommunitySidebar(
                            onDismiss: () =>
                                setState(() => showCommunitySidebar = false),
                          )
                        : Container(),
                  ),
                ),
                SliverToBoxAdapter(
                    child: communityCubit.state.map(
                  initial: (_) => Container(),
                  loading: (_) => Container(
                                      height: MediaQuery.of(context).size.height * 0.5,
                                      alignment: Alignment.center,
                                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                                      child: const CircularProgressIndicator(),
                                    ),
                  success: (state) =>  const FeedReachedEnd(),
                  failure: (_) => Container()
                  )
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CommunityHeader extends StatelessWidget {
  final bool showCommunitySidebar;
  final CommunityEntity community;
  final Function(bool toggled) onToggle;

  const CommunityHeader({
    super.key,
    required this.showCommunitySidebar,
    required this.community,
    required this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
        elevation: showCommunitySidebar ? 5.0 : 0,
        child: GestureDetector(
          onTap: () => onToggle(!showCommunitySidebar),
          onHorizontalDragEnd: (DragEndDetails dragEndDetails) {
            if (dragEndDetails.velocity.pixelsPerSecond.dx >= 0) {
              onToggle(false);
            } else if (dragEndDetails.velocity.pixelsPerSecond.dx < 0) {
              onToggle(true);
            }
          },
          child: Stack(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 16.0, left: 24.0, right: 24.0, bottom: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          children: [
                            CommunityIcon(
                              community: community,
                              radius: 45.0,
                            ),
                            const SizedBox(width: 20.0),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    community.name ?? '',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(community.name ?? ''),
                                  const SizedBox(height: 8.0),
                                  Row(
                                    children: [
                                      IconText(
                                        icon: const Icon(Icons.people_rounded),
                                        text: formatNumberToK(
                                            community.memberCount),
                                      ),
                                      const SizedBox(width: 8.0),
                                      IconText(
                                        icon: const Icon(
                                            Icons.calendar_month_rounded),
                                        text: formatNumberToK(
                                            community.created?.month ?? 1),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(9.0),
                              child: Icon(Icons.info_outline_rounded, size: 25),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}

class FeedAppBarTitle extends StatelessWidget {
  const FeedAppBarTitle({super.key, this.visible = true});
  final bool visible;

  @override
  Widget build(BuildContext context) {
    final communityState = context.read<CommunityCubit>().state;
    return AnimatedOpacity(
      duration: const Duration(milliseconds: 200),
      opacity: visible ? 1.0 : 0.0,
      child: ListTile(
        title: Text(
          communityState.when(
              initial: () => '',
              loading: () => '',
              success: (communityEntity) => communityEntity.name ?? '',
              failure: (_) => ''),

          ///TODO: NAME of the community
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        subtitle: Row(
          children: [
            Container(),
            Icon(Icons.local_fire_department_rounded, size: 13),
            // const SizedBox(width: 4),
            // Text(getSortName(feedBloc.state)),
          ],
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 0),
      ),
    );
  }
}

class FeedReachedEnd extends StatelessWidget {
  const FeedReachedEnd({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final state = context.read<ThunderBloc>().state;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          color: theme.dividerColor.withOpacity(0.1),
          padding: const EdgeInsets.symmetric(vertical: 32.0),
          child: ScalableText(
            'Hmmm. It seems like you\'ve reached the bottom.',
            textAlign: TextAlign.center,
            style: theme.textTheme.titleSmall,
            fontScale: state.metadataFontSizeScale,
          ),
        ),
        const SizedBox(height: 160)
      ],
    );
  }
}
