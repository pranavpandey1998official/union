import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:intl/intl.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uniun/common/widgets/common_markdown_body.dart';
import 'package:uniun/common/widgets/community_icon.dart';
import 'package:uniun/common/widgets/user_avatar.dart';


import 'package:uniun/community/bloc/community_cubit.dart';
import 'package:uniun/community/bloc/community_state.dart';
import 'package:uniun/domain/entities/community/community_entity.dart';

const kSidebarWidthFactor = 0.8;

class CommunitySidebar extends StatefulWidget {
  final Function onDismiss;

  const CommunitySidebar({super.key, required this.onDismiss});

  @override
  State<CommunitySidebar> createState() => _CommunitySidebarState();
}

class _CommunitySidebarState extends State<CommunitySidebar> {
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final bool isUserLoggedIn = true;



    return BlocBuilder<CommunityCubit, CommunityState>(
      builder: (context, state) {
        return state.when(
          failure: (_) => Container(),
          initial: () => Container(), 
          loading: () => Container(), 
          success: (communityEntity) => Container(
            alignment: Alignment.centerRight,
            child: Dismissible(
              key: Key(communityEntity.communityId.toString()),
              onUpdate: (DismissUpdateDetails details) => details.reached ? widget.onDismiss() : null,
              direction: DismissDirection.startToEnd,
              child: FractionallySizedBox(
                widthFactor: kSidebarWidthFactor,
                alignment: FractionalOffset.centerRight,
                child: Container(
                  color: theme.colorScheme.background,
                  alignment: Alignment.topRight,
                  child: Column(
                    children: [
                      AnimatedSwitcher(
                        duration: const Duration(milliseconds: 100),
                        transitionBuilder: (Widget child, Animation<double> animation) {
                          return SizeTransition(
                            sizeFactor: animation,
                            child: FadeTransition(opacity: animation, child: child),
                          );
                        },
                        child: communityEntity.isBlocked == false
                            ? Padding(
                                padding: const EdgeInsets.only(top: 10, left: 12, right: 12, bottom: 4),
                                child: CommunityActions(isUserLoggedIn: isUserLoggedIn, communityEntity: communityEntity),
                              )
                            : null,
                      ),
                      const SizedBox(height: 10.0),
                      const Divider(height: 1, thickness: 2),
                      Container(
                        alignment: Alignment.topCenter,
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        height: MediaQuery.of(context).size.height - 200,
                        child: ListView(
                          shrinkWrap: true,
                          children: [
                            Material(
                              child: CommonMarkdownBody(
                                body: communityEntity.about ?? '',
                                imageMaxWidth: (kSidebarWidthFactor - 0.1) * MediaQuery.of(context).size.width,
                                allowHorizontalTranslation: false,
                              ),
                            ),
                            const SidebarSectionHeader(value: "Stats"),
                            // Padding(
                            //   padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            //   child: CommunityStatsList(communityView: communityView),
                            // ),
                            const SidebarSectionHeader(value: "Moderators"),
                            CommunityModeratorList(communityEntity: communityEntity!),
                            const SizedBox(height: 256)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )); 

      },
    );
  }
}

class CommunityModeratorList extends StatelessWidget {
  const CommunityModeratorList({super.key, required this.communityEntity});

  final CommunityEntity communityEntity;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      children: [
          Material(
            child: InkWell(
              onTap: () =>{}, //navigateToUserPage(context, userId: mods.moderator.id),
              borderRadius: BorderRadius.circular(50),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    CommunityIcon(
                      community: communityEntity,
                      radius: 20.0,
                    ),
                    const SizedBox(width: 16.0),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          communityEntity.name ?? '',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
      ],
    );
  }
}

// class BlockCommunityButton extends StatelessWidget {
//   const BlockCommunityButton({
//     super.key,
//     required this.communityView,
//     required this.isUserLoggedIn,
//   });

//   final CommunityView communityView;
//   final bool isUserLoggedIn;

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<CommunityBloc, CommunityState>(
//       builder: (context, state) {
//         bool blocked = false;

//         if (state.communityView != null) {
//           blocked = state.communityView!.blocked;
//         } else {
//           blocked = communityView.blocked;
//         }

//         return Padding(
//           padding: EdgeInsets.only(top: blocked ? 10 : 4, left: 12, right: 12, bottom: 4),
//           child: ElevatedButton(
//             onPressed: isUserLoggedIn
//                 ? () {
//                     HapticFeedback.heavyImpact();
//                     hideSnackbar(context);
//                     context.read<CommunityBloc>().add(CommunityActionEvent(communityAction: CommunityAction.block, communityId: communityView.community.id, value: !blocked));
//                   }
//                 : null,
//             style: TextButton.styleFrom(
//               fixedSize: const Size.fromHeight(40),
//               foregroundColor: Colors.redAccent,
//               padding: EdgeInsets.zero,
//             ),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Icon(blocked ? Icons.undo_rounded : Icons.block_rounded),
//                 const SizedBox(width: 4.0),
//                 Text(blocked ? 'Unblock Community' : 'Block Community'),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }
// }

class CommunityActions extends StatelessWidget {
  const CommunityActions({super.key, required this.isUserLoggedIn, required this.communityEntity});

  final bool isUserLoggedIn;
  final CommunityEntity communityEntity;

  @override
  Widget build(BuildContext context) {

    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: isUserLoggedIn
                ? () async {
                    HapticFeedback.mediumImpact();
                    // CommunityBloc communityBloc = context.read<CommunityBloc>();
                    // AccountBloc accountBloc = context.read<AccountBloc>();
                    // ThunderBloc thunderBloc = context.read<ThunderBloc>();
                    // FeedBloc feedBloc = context.read<FeedBloc>();

                    // final ThunderState state = context.read<ThunderBloc>().state;
                    // final bool reduceAnimations = state.reduceAnimations;

                    // Navigator.of(context).push(SwipeablePageRoute(
                    //   transitionDuration: reduceAnimations ? const Duration(milliseconds: 100) : null,
                    //   canOnlySwipeFromEdge: true,
                    //   backGestureDetectionWidth: 45,
                    //   builder: (context) {
                    //     return MultiBlocProvider(
                    //       providers: [
                    //         BlocProvider<CommunityBloc>.value(value: communityBloc),
                    //         BlocProvider<AccountBloc>.value(value: accountBloc),
                    //         BlocProvider<ThunderBloc>.value(value: thunderBloc),
                    //         BlocProvider<FeedBloc>.value(value: feedBloc),
                    //       ],
                    //       child: CreatePostPage(
                    //         communityId: communityView.community.id,
                    //         communityView: getCommunityResponse.communityView,
                    //       ),
                    //     );
                    //   },
                    // ));
                  }
                : null,
            style: TextButton.styleFrom(
              fixedSize: const Size.fromHeight(40),
              foregroundColor: null,
              padding: EdgeInsets.zero,
            ),
            child: Semantics(
              focused: true,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.library_books_rounded),
                  SizedBox(width: 4.0),
                  Text('New Post', style: TextStyle(color: null)),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(width: 10, height: 8),
        Expanded(
          child: ElevatedButton(
            onPressed: isUserLoggedIn
                ? () {
                    HapticFeedback.mediumImpact();
                    // context.read<CommunityBloc>().add(CommunityActionEvent(
                    //     communityAction: CommunityAction.follow, communityId: communityView.community.id, value: communityView.subscribed == SubscribedType.notSubscribed ? true : false));
                  }
                : null,
            style: TextButton.styleFrom(
              fixedSize: const Size.fromHeight(40),
              foregroundColor: null,
              padding: EdgeInsets.zero,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  communityEntity.isMember ? Icons.add_circle_outline_rounded : Icons.pending_outlined
                ),
                const SizedBox(width: 4.0),
                Text(
                  communityEntity.isMember ? 'Leave' : 'Join'
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class SidebarSectionHeader extends StatelessWidget {
  const SidebarSectionHeader({
    super.key,
    required this.value,
  });

  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0, bottom: 4),
      child: Row(
        children: [
          Text(value),
          const Expanded(child: Divider(height: 5, thickness: 2, indent: 15)),
        ],
      ),
    );
  }
}

class SidebarStat extends StatelessWidget {
  const SidebarStat({
    super.key,
    required this.icon,
    required this.value,
  });

  final IconData icon;
  final String value;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 8, top: 2, bottom: 2),
          child: Icon(
            icon,
            size: 18,
            color: theme.colorScheme.onBackground.withOpacity(0.65),
          ),
        ),
        Text(
          value,
          style: TextStyle(color: theme.textTheme.titleSmall?.color?.withOpacity(0.65)),
        ),
      ],
    );
  }
}
