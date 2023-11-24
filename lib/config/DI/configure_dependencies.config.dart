// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../core/middleware/interceptors.dart' as _i4;
import '../../core/services/local_database_service.dart' as _i7;
import '../database/app_database.dart' as _i3;
import '../module.dart' as _i8;
import '../routes/controller/go_router_notifier.dart' as _i6;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appModule = _$AppModule();
    await gh.factoryAsync<_i3.AppDatabase>(
      () => appModule.database,
      preResolve: true,
    );
    gh.lazySingleton<_i4.AppInterceptors>(
      () => _i4.AppInterceptors(),
      instanceName: 'appInterceptors',
    );
    gh.lazySingleton<_i5.Dio>(() => appModule
        .dio(gh<_i4.AppInterceptors>(instanceName: 'appInterceptors')));
    gh.factory<_i6.GoRouterNotifier>(() => _i6.GoRouterNotifier());
    gh.lazySingleton<_i7.LocalDatabaseService>(
        () => _i7.LocalDatabaseServiceImp(gh<_i3.AppDatabase>()));
    return this;
  }
}

class _$AppModule extends _i8.AppModule {}
