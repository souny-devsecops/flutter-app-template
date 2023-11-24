// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// **************************************************************************
// FloorGenerator
// **************************************************************************

// ignore: avoid_classes_with_only_static_members
class $FloorAppDatabase {
  /// Creates a database builder for a persistent database.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDatabaseBuilder databaseBuilder(String name) =>
      _$AppDatabaseBuilder(name);

  /// Creates a database builder for an in memory database.
  /// Information stored in an in memory database disappears when the process is killed.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDatabaseBuilder inMemoryDatabaseBuilder() =>
      _$AppDatabaseBuilder(null);
}

class _$AppDatabaseBuilder {
  _$AppDatabaseBuilder(this.name);

  final String? name;

  final List<Migration> _migrations = [];

  Callback? _callback;

  /// Adds migrations to the builder.
  _$AppDatabaseBuilder addMigrations(List<Migration> migrations) {
    _migrations.addAll(migrations);
    return this;
  }

  /// Adds a database [Callback] to the builder.
  _$AppDatabaseBuilder addCallback(Callback callback) {
    _callback = callback;
    return this;
  }

  /// Creates the database and initializes it.
  Future<AppDatabase> build() async {
    final path = name != null
        ? await sqfliteDatabaseFactory.getDatabasePath(name!)
        : ':memory:';
    final database = _$AppDatabase();
    database.database = await database.open(
      path,
      _migrations,
      _callback,
    );
    return database;
  }
}

class _$AppDatabase extends AppDatabase {
  _$AppDatabase([StreamController<String>? listener]) {
    changeListener = listener ?? StreamController<String>.broadcast();
  }

  LocalDAO? _localDAOInstance;

  Future<sqflite.Database> open(
    String path,
    List<Migration> migrations, [
    Callback? callback,
  ]) async {
    final databaseOptions = sqflite.OpenDatabaseOptions(
      version: 1,
      onConfigure: (database) async {
        await database.execute('PRAGMA foreign_keys = ON');
        await callback?.onConfigure?.call(database);
      },
      onOpen: (database) async {
        await callback?.onOpen?.call(database);
      },
      onUpgrade: (database, startVersion, endVersion) async {
        await MigrationAdapter.runMigrations(
            database, startVersion, endVersion, migrations);

        await callback?.onUpgrade?.call(database, startVersion, endVersion);
      },
      onCreate: (database, version) async {
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `local` (`name` TEXT NOT NULL, `value` TEXT NOT NULL, PRIMARY KEY (`name`))');

        await callback?.onCreate?.call(database, version);
      },
    );
    return sqfliteDatabaseFactory.openDatabase(path, options: databaseOptions);
  }

  @override
  LocalDAO get localDAO {
    return _localDAOInstance ??= _$LocalDAO(database, changeListener);
  }
}

class _$LocalDAO extends LocalDAO {
  _$LocalDAO(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _localEntityInsertionAdapter = InsertionAdapter(
            database,
            'local',
            (LocalEntity item) =>
                <String, Object?>{'name': item.name, 'value': item.value});

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<LocalEntity> _localEntityInsertionAdapter;

  @override
  Future<void> remove(String name) async {
    await _queryAdapter
        .queryNoReturn('DELETE FROM local WHERE name=?1', arguments: [name]);
  }

  @override
  Future<void> removeAll() async {
    await _queryAdapter.queryNoReturn('DELETE FROM local');
  }

  @override
  Future<String?> get(String name) async {
    return _queryAdapter.query('SELECT value FROM local WHERE name=?1',
        mapper: (Map<String, Object?> row) => row.values.first as String,
        arguments: [name]);
  }

  @override
  Future<void> update(
    String name,
    String value,
  ) async {
    await _queryAdapter.queryNoReturn('UPDATE local SET value=?2 WHERE name=?1',
        arguments: [name, value]);
  }

  @override
  Future<List<LocalEntity>> getAll() async {
    return _queryAdapter.queryList('SELECT * FROM local',
        mapper: (Map<String, Object?> row) => LocalEntity(
            name: row['name'] as String, value: row['value'] as String));
  }

  @override
  Future<void> create(LocalEntity data) async {
    await _localEntityInsertionAdapter.insert(data, OnConflictStrategy.abort);
  }
}
