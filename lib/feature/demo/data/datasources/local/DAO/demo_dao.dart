import 'package:injectable/injectable.dart';

import '../../../../../../core/services/local_database_service.dart';

@LazySingleton()
class DemoLocalService {
  final LocalDatabaseService _localDatabaseService;
  DemoLocalService(this._localDatabaseService);
  void setData(dynamic data) {
    _localDatabaseService.create("demo", data);
  }

  Future<String?> getData() async {
    return await _localDatabaseService.get("demo");
  }
}
