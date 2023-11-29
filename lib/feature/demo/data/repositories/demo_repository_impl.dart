import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:template/core/resources/data_state.dart';
import 'package:template/feature/demo/data/datasources/local/DAO/demo_dao.dart';
import 'package:template/feature/demo/data/models/post_model.dart';
import 'package:template/feature/demo/data/models/user_model.dart';
import 'package:template/feature/demo/domain/entities/demo.dart';
import 'package:template/feature/demo/domain/entities/post.dart';
import 'package:template/feature/demo/domain/entities/user.dart';
import '../../domain/repositories/demo_repository.dart';
import '../datasources/remote/demo_api_service.dart';
import 'package:dio/dio.dart';

import '../models/demo_model.dart';

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

  @override
  Future<DataState<ApiResponseModel>> fetchDemo() async {
    try {
      final httpResponse = await _demoApiService.fetchDemo();
      if (httpResponse.response.statusCode == HttpStatus.ok) {
        _demoLocalService.setData(jsonEncode(httpResponse.data));
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
      return DataSuccess(ApiResponseModel.fromJson(jsonDecode(dataCach)));
    }
  }

  @override
  Future<DataState<PostModel>> postDemo(dynamic body) async {
    try {
      final httpResponse = await _demoApiService.postDemo(body);
      log("httpResponse.response.statusCode: ${httpResponse.response.statusCode}");
      if (httpResponse.response.statusCode == HttpStatus.created) {
        return DataSuccess(httpResponse.data);
      } else {
        return DataFailed(DioError(
            error: httpResponse.response.statusMessage,
            response: httpResponse.response,
            type: DioErrorType.badResponse,
            requestOptions: httpResponse.response.requestOptions));
      }
    } on DioError catch (e) {
      return DataFailed(DioError(
          error: e.response!.statusMessage,
          response: e.response,
          // ignore: deprecated_member_use
          type: DioErrorType.badResponse,
          requestOptions: e.response!.requestOptions));
    }
  }
}
