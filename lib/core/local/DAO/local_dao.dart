import 'package:floor/floor.dart';
import '../local_entity.dart';

@dao
abstract class LocalDAO {
  @insert
  Future<void> create(LocalEntity data);

  @Query('DELETE FROM local WHERE name=:name')
  Future<void> remove(String name);

  @Query('DELETE FROM local')
  Future<void> removeAll();

  @Query('SELECT value FROM local WHERE name=:name')
  Future<String?> get(String name);

  @Query('UPDATE local SET value=:value WHERE name=:name')
  Future<void> update(String name, String value);

  @Query('SELECT * FROM local')
  Future<List<LocalEntity>> getAll();
}
