import 'package:freezed_annotation/freezed_annotation.dart';

part 'go_router_state.freezed.dart';

@freezed
class GoRouterState with _$GoRouterState {
  factory GoRouterState({
    bool? isAlreadyOnboaring,
  }) = _GoRouterState;
  const GoRouterState._();
  factory GoRouterState.initial() => GoRouterState(isAlreadyOnboaring: false);
}
