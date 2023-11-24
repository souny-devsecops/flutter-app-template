import 'package:injectable/injectable.dart';

import '../../config/database/app_database.dart';
import '../local/local_entity.dart';

abstract class LocalDatabaseService {
  Future<void> create(String name, String value);
  Future<String?> get(String key);
  Future<List<LocalEntity>> getAll();
  Future<void> delete(String key);
  Future<void> deleteAll();
}

@LazySingleton(as: LocalDatabaseService)
class LocalDatabaseServiceImp implements LocalDatabaseService {
  final AppDatabase _appDatabase;
  LocalDatabaseServiceImp(this._appDatabase);

  @override
  Future<void> create(String key, String value) async {
    String? data = await get(key);
    if (data == null) {
      _appDatabase.localDAO.create(LocalEntity(name: key, value: value));
    } else {
      _appDatabase.localDAO.update(key, value);
    }
  }

  @override
  Future<String?> get(String key) async {
    return await _appDatabase.localDAO.get(key);
  }

  @override
  Future<List<LocalEntity>> getAll() {
    return _appDatabase.localDAO.getAll();
  }

  @override
  Future<void> delete(String key) async {
    _appDatabase.localDAO.remove(key);
  }

  @override
  Future<void> deleteAll() async {
    _appDatabase.localDAO.removeAll();
  }
}
