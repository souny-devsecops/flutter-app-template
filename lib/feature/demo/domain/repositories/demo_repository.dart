import 'package:template/feature/demo/domain/entities/post.dart';
import 'package:template/feature/demo/domain/entities/user.dart';

import '../../../../core/resources/data_state.dart';
import '../entities/demo.dart';

abstract class DemoRepository {
  Future<DataState<DataEntity>> fetchUser();
  Future<DataState<ApiResponseEntity>> fetchDemo();
  Future<DataState<PostEntity>> postDemo(dynamic body);
}
