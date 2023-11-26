import 'dart:developer';

import 'package:riverpod/riverpod.dart';
import 'package:injectable/injectable.dart';
import 'package:template/config/DI/configure_dependencies.dart';
import '../domain/usecases/fetch_user_usecase.dart';
import 'demo_state.dart';

final demoNotifier = StateNotifierProvider<DemoNotifier, DemoState>((ref) {
  return DemoNotifier(getIt());
});
@injectable
class DemoNotifier extends StateNotifier<DemoState> {
  final FetchUserUseCase _fetchUserUseCase;
  DemoNotifier(this._fetchUserUseCase) : super(DemoState.initial());
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
}
