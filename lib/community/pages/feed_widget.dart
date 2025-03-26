import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uniun/common/locator.dart';
import 'package:uniun/community/bloc/community_feed_cubit.dart';
import 'package:uniun/community/bloc/community_feed_state.dart';
import 'package:uniun/community/widgets/post_card.dart';
import 'package:uniun/core/extensions/extensions.dart';

class FeedPostList extends StatelessWidget {

  const FeedPostList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final CommunityFeedState communityFeedState = context.watch<CommunityFeedCubit>().state;

    return communityFeedState.when(
          failure: (_) => SliverToBoxAdapter(child: Container()),
          initial: () => SliverToBoxAdapter(child: Container()), 
          loading: () => SliverToBoxAdapter(child: Container()), 
          success: (state) => SliverList(delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index ) {
              return PostCard(
              postViewMedia: state[index],
              onVoteAction: (int voteType) {
                
              },
              onSaveAction: (bool saved) {
                
              },
              onReadAction: (bool read) {
                
              },
              indicateRead: true,
              communityMode: true,
            );
            },
            childCount: state.length,
          ))
        );
    


    // Widget representing the list of posts on the feed
    // return SliverMasonryGrid.count(
    //   crossAxisCount: tabletMode ? 2 : 1,
    //   crossAxisSpacing: 40,
    //   mainAxisSpacing: 0,
    //   itemBuilder: (BuildContext context, int index) {
    //     return AnimatedSwitcher(
    //       switchOutCurve: Curves.ease,
    //       duration: const Duration(milliseconds: 0),
    //       reverseDuration: const Duration(milliseconds: 400),
    //       transitionBuilder: (child, animation) {
    //         return FadeTransition(
    //           opacity: Tween<double>(begin: 0.0, end: 1.0).animate(
    //             CurvedAnimation(parent: animation, curve: const Interval(0.5, 1.0)),
    //           ),
    //           child: SlideTransition(
    //             position: Tween<Offset>(begin: const Offset(1.2, 0), end: const Offset(0, 0)).animate(animation),
    //             child: SizeTransition(
    //               sizeFactor: Tween<double>(begin: 0.0, end: 1.0).animate(
    //                 CurvedAnimation(
    //                   parent: animation,
    //                   curve: const Interval(0.0, 0.25),
    //                 ),
    //               ),
    //               child: child,
    //             ),
    //           ),
    //         );
    //       },
    //       child: queuedForRemoval?.contains(postViewMedias[index].postView.post.id) != true
    //           ? PostCard(
    //               postViewMedia: postViewMedias[index],
    //               communityMode: state.feedType == FeedType.community,
    //               onVoteAction: (int voteType) {
    //                 context.read<FeedBloc>().add(FeedItemActionedEvent(postId: postViewMedias[index].postView.post.id, postAction: PostAction.vote, value: voteType));
    //               },
    //               onSaveAction: (bool saved) {
    //                 context.read<FeedBloc>().add(FeedItemActionedEvent(postId: postViewMedias[index].postView.post.id, postAction: PostAction.save, value: saved));
    //               },
    //               onReadAction: (bool read) {
    //                 context.read<FeedBloc>().add(FeedItemActionedEvent(postId: postViewMedias[index].postView.post.id, postAction: PostAction.read, value: read));
    //               },
    //               listingType: state.postListingType,
    //               indicateRead: thunderState.dimReadPosts,
    //             )
    //           : null,
    //     );
    //   },
    //   childCount: postViewMedias.length,
    // );
  }
}

