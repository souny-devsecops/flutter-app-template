import 'package:template/feature/demo/domain/entities/user.dart';

import '../../../../core/resources/data_state.dart';

abstract class DemoRepository {
  Future<DataState<DataEntity>> fetchUser();
}
