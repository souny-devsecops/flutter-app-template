import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:injectable/injectable.dart';
import 'go_router_state.dart';

final goRouterNotifier =
    StateNotifierProvider<GoRouterNotifier, GoRouterState>((ref) {
  return GoRouterNotifier();
});

@injectable
class GoRouterNotifier extends StateNotifier<GoRouterState> {
  GoRouterNotifier() : super(GoRouterState.initial());
  Future<bool> checkOnboarding() async {
    String? isLogin;
    if (isLogin == null) {
      return true;
    } else {
      return false;
    }
  }

  Future<bool> checkAuth() async {
    String? isLogin;
    if (isLogin != null) {
      return true;
    } else {
      return false;
    }
  }
}
