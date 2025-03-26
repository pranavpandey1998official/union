import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ScaffoldWithNestedNavigation extends StatelessWidget {
  const ScaffoldWithNestedNavigation({
    Key? key,
    required this.navigationShell,
  }) : super(key: key ?? const ValueKey('ScaffoldWithNestedNavigation'));
  final StatefulNavigationShell navigationShell;

  void _goBranch(int index) {
    navigationShell.goBranch(
      index,
      // A common pattern when using bottom navigation bars is to support
      // navigating to the initial location when tapping the item that is
      // already active. This example demonstrates how to support this behavior,
      // using the initialLocation parameter of goBranch.
      initialLocation: index == navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: NavigationBar(
        selectedIndex: navigationShell.currentIndex,
        destinations: const [
          NavigationDestination(label: 'home', icon: Icon(Icons.home)),
          NavigationDestination(label: 'search', icon: Icon(Icons.search)),
          NavigationDestination(label: 'create', icon: Icon(Icons.add)),
          NavigationDestination(label: 'user', icon: Icon(Icons.account_circle_outlined)),
          NavigationDestination(label: 'watch', icon: Icon(Icons.remove_red_eye_outlined)),
        ],
        onDestinationSelected: _goBranch,
      ),
    );
  }
}
