import 'package:floor/floor.dart';
import 'package:sqflite/sqflite.dart' as sqflite;
import 'dart:async';

import '../../core/local/DAO/local_dao.dart';
import '../../core/local/local_entity.dart';

part 'app_database.g.dart';

@Database(version: 1, entities: [LocalEntity])
abstract class AppDatabase extends FloorDatabase {
  LocalDAO get localDAO;
}
