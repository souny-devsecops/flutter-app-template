import 'dart:convert';
import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:template/core/resources/data_state.dart';
import 'package:template/feature/demo/data/datasources/local/DAO/demo_dao.dart';
import 'package:template/feature/demo/data/models/user_model.dart';
import 'package:template/feature/demo/domain/entities/user.dart';
import '../../domain/repositories/demo_repository.dart';
import '../datasources/remote/demo_api_service.dart';
import 'package:dio/dio.dart';

@LazySingleton(as: DemoRepository)
class DemoRepositoryImpl implements DemoRepository {
  final DemoApiService _demoApiService;
  final DemoLocalService _demoLocalService;
  DemoRepositoryImpl(
    this._demoApiService,
    this._demoLocalService,
  );

  @override
  Future<DataState<DataModel>> fetchUser() async {
    try {
      final httpResponse = await _demoApiService.fetchUser();
      if (httpResponse.response.statusCode == HttpStatus.ok) {
        _demoLocalService.setData(jsonEncode(httpResponse.data));
        _demoLocalService.getData();
        return DataSuccess(httpResponse.data);
      } else {
        return DataFailed(DioError(
            error: httpResponse.response.statusMessage,
            response: httpResponse.response,
            type: DioErrorType.badResponse,
            requestOptions: httpResponse.response.requestOptions));
      }
    } on DioError {
      dynamic dataCach = await _demoLocalService.getData();
      return DataSuccess(DataModel.fromJson(jsonDecode(dataCach)));
    }
  }
}
