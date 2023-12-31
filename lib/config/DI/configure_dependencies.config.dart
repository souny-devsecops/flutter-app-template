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
import '../../feature/demo/application/demo_notifier.dart' as _i15;
import '../../feature/demo/data/datasources/local/DAO/demo_dao.dart' as _i9;
import '../../feature/demo/data/datasources/remote/demo_api_service.dart'
    as _i8;
import '../../feature/demo/data/repositories/demo_repository_impl.dart' as _i11;
import '../../feature/demo/domain/repositories/demo_repository.dart' as _i10;
import '../../feature/demo/domain/usecases/fetch_demo_usecase.dart' as _i12;
import '../../feature/demo/domain/usecases/fetch_user_usecase.dart' as _i13;
import '../../feature/demo/domain/usecases/post_demo_usecase.dart' as _i14;
import '../database/app_database.dart' as _i3;
import '../routes/controller/go_router_notifier.dart' as _i6;
import 'module.dart' as _i16;

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
    gh.lazySingleton<_i8.DemoApiService>(
        () => _i8.DemoApiService(gh<_i5.Dio>()));
    gh.lazySingleton<_i9.DemoLocalService>(
        () => _i9.DemoLocalService(gh<_i7.LocalDatabaseService>()));
    gh.lazySingleton<_i10.DemoRepository>(() => _i11.DemoRepositoryImpl(
          gh<_i8.DemoApiService>(),
          gh<_i9.DemoLocalService>(),
        ));
    gh.factory<_i12.FetchDemmoUseCase>(
        () => _i12.FetchDemmoUseCase(gh<_i10.DemoRepository>()));
    gh.factory<_i13.FetchUserUseCase>(
        () => _i13.FetchUserUseCase(gh<_i10.DemoRepository>()));
    gh.factory<_i14.PostDemmoUseCase>(
        () => _i14.PostDemmoUseCase(gh<_i10.DemoRepository>()));
    gh.factory<_i15.DemoNotifier>(() => _i15.DemoNotifier(
          gh<_i13.FetchUserUseCase>(),
          gh<_i12.FetchDemmoUseCase>(),
          gh<_i14.PostDemmoUseCase>(),
        ));
    return this;
  }
}

class _$AppModule extends _i16.AppModule {}
