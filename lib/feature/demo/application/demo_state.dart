import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain/entities/user.dart';

part 'demo_state.freezed.dart';

@freezed
class DemoState with _$DemoState {
  factory DemoState({
    String? demo,
    int? counter,
    List<UserEntity>? users,
  }) = _DemoState;
  const DemoState._();
  factory DemoState.initial() => DemoState(
        demo: "Demo",
        counter: 0,
        users: [],
      );
}
