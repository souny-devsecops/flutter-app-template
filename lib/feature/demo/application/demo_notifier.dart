import 'dart:developer';
import 'dart:ffi';

import 'package:riverpod/riverpod.dart';
import 'package:injectable/injectable.dart';
import 'package:template/config/DI/configure_dependencies.dart';
import 'package:template/feature/demo/domain/usecases/fetch_demo_usecase.dart';
import 'package:template/feature/demo/domain/usecases/post_demo_usecase.dart';
import '../domain/usecases/fetch_user_usecase.dart';
import 'demo_state.dart';

final demoNotifier = StateNotifierProvider<DemoNotifier, DemoState>((ref) {
  return DemoNotifier(
    getIt(),
    getIt(),
    getIt(),
  );
});

@injectable
class DemoNotifier extends StateNotifier<DemoState> {
  final FetchUserUseCase _fetchUserUseCase;
  final FetchDemmoUseCase _fetchDemmoUseCase;
  final PostDemmoUseCase _postDemmoUseCase;
  DemoNotifier(
      this._fetchUserUseCase, this._fetchDemmoUseCase, this._postDemmoUseCase)
      : super(DemoState.initial());
  void incrementCounter() {
    state = state.copyWith(counter: state.counter! + 1);
  }

  Future<void> fetchUser() async {
    _fetchUserUseCase.call().then((value) {
      state = state.copyWith(
        users: value.data!.users,
      );
    });
  }

  Future<void> fetAPI() async {
    await _fetchDemmoUseCase.call().then((value) {});
  }

  Future<void> postDemo() async {
    var body = {"id": 101, "title": "foo", "body": "bar", "userId": 1};
    await _postDemmoUseCase.call(params: body).then((value) {
      log("message: ${value.data}");
    });
  }
}
