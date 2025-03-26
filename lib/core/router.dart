import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:uniun/common/locator.dart';
import 'package:uniun/community/pages/community_page.dart';
import 'package:uniun/community/pages/create_community.dart';
import 'package:uniun/community/pages/create_community_success.dart';
import 'package:uniun/community/pages/create_post_page2.dart';
import 'package:uniun/core/ScaffoldWithNestedNavigation.dart';
import 'package:uniun/core/bloc/user/user_bloc.dart';
import 'package:uniun/posts/pages/post_page.dart';
import 'package:uniun/search/pages/search_page.dart';
import 'package:uniun/user/pages/login_page.dart';
import 'package:uniun/user/pages/signup_page.dart';
import 'package:uniun/user/pages/user_page.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

final _shellNavigatorHomeKey = GlobalKey<NavigatorState>(debugLabel: 'home');
final _shellNavigatorSearchKey =
    GlobalKey<NavigatorState>(debugLabel: 'search');
final _shellNavigatorCreateKey =
    GlobalKey<NavigatorState>(debugLabel: 'create');
final _shellNavigatorUserKey = GlobalKey<NavigatorState>(debugLabel: 'user');
final _shellNavigatorWatchKey = GlobalKey<NavigatorState>(debugLabel: 'watch');

GoRouter routeGenerator() {
  return GoRouter(
  initialLocation: '/community/4/createPost', 
  redirect: (context, state) {
    var userState = context.read<UserBloc>().state;
    var loggedIn = userState.isLoggedIn;
    if(state.fullPath == '/user' && !loggedIn) {
      return '/user/login';
    }
    return null;

  },
  routes: <RouteBase>[
    StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          // the UI shell
          return ScaffoldWithNestedNavigation(navigationShell: navigationShell);
        },
        branches: [
          StatefulShellBranch(
            navigatorKey: _shellNavigatorHomeKey,
            routes: [
              // top route inside branch
              GoRoute(
                path: '/home',
                builder: (context, state) => Center(
                  child: Text("/a"),
                ),
                routes: [
                  // child route
                  GoRoute(
                    path: 'details',
                    builder: (context, state) => Scaffold(
                      body: Center(child: Text("/a")),
                    ),
                  ),
                ],
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _shellNavigatorSearchKey,
            initialLocation: '/search',
            routes: [
              // top route inside branch
              GoRoute(
                path: '/search',
                builder: (context, state) => SearchPage(),
                routes: [
                  // child route
                ]
                ),
                GoRoute(
                    path: '/community/:communityId',
                    builder: (context, state) => CommunityPage(
                        id: int.parse(state.pathParameters['communityId']!)),
                  ),
                  GoRoute(
                    path: '/community/:communityId/createPost',
                    builder: (context, state) => CreatePostPage(
                        communityID : int.parse(state.pathParameters['communityId']!)),
                  ),
              ]
            ),
          StatefulShellBranch(
            navigatorKey: _shellNavigatorCreateKey,
            routes: [
              // top route inside branch
              GoRoute(
                path: '/create',
                pageBuilder: (context, state) => NoTransitionPage(
                  child: Center(
                    child: CreateCommunityPage(),
                  ),
                ),
                routes: [
                  // child route
                  GoRoute(
                    path: 'details',
                    builder: (context, state) => const Scaffold(
                      body: Center(child: Text("/a")),
                    ),
                  ),
                  GoRoute(
                    path: 'communityCreateSuccess/:communityName',
                    builder: (context, state) {
                      final communityName = state.pathParameters['communityName']!;
                      return CreateCommunitySuccess(communityName: communityName);
                    },
                  ),
                ],
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _shellNavigatorUserKey,
            routes: [
              // top route inside branch
              GoRoute(
                path: '/user',
                builder: (context, state) => const UserPage(),
                routes: [
                  // child route
                  GoRoute(
                    path: 'details',
                    builder: (context, state) => Scaffold(
                      body: Center(child: Text("/a")),
                    ),
                  ),
                  GoRoute(
                      path: 'login',
                      builder: (BuildContext context, GoRouterState state) =>
                          LoginPage()),
                  GoRoute(
                      path: 'signup',
                      builder: (BuildContext context, GoRouterState state) =>
                          SignUpPage())
                ],
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _shellNavigatorWatchKey,
            routes: [
              // top route inside branch
              GoRoute(
                path: '/watch',
                builder: (context, state) => Center(
                  child: Text("/a"),
                ),
                routes: [
                  // child route
                  GoRoute(
                    path: 'details',
                    builder: (context, state) => Scaffold(
                      body: Center(child: Text("/a")),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ]),
    GoRoute(
        path: '/post/:id',
        builder: (BuildContext context, GoRouterState state) =>
            PostPage(postId: int.parse((state.pathParameters['id']!))))
  ],
  );
}
