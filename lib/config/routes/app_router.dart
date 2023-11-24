import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod/riverpod.dart';
import '../../main.dart';

import 'controller/go_router_notifier.dart';
import 'route_utils.dart';
import 'screens/not_found_page.dart';

final GlobalKey<NavigatorState> _rootNavigator = GlobalKey(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigator =
    GlobalKey(debugLabel: 'shell');

final goRouterProvider = Provider<GoRouter>((ref) {
  final notifier = ref.read(goRouterNotifier.notifier);
  return GoRouter(
    navigatorKey: _rootNavigator,
    initialLocation: PAGES.root.screenPath,
    routes: [
      GoRoute(
          path: PAGES.root.screenPath,
          name: PAGES.root.screenName,
          builder: (context, state) => const RootPage(title: "RootPage")),
    ],
    errorBuilder: (context, state) => const NotFoundScreen(),
  );
});
