import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

@Named("appInterceptors")
@lazySingleton
class AppInterceptors extends Interceptor {
  AppInterceptors();

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    handler.next(response);
  }
}

PrettyDioLogger dioLogger() {
  return PrettyDioLogger(
    requestHeader: true,
    maxWidth: 150,
    error: true,
    requestBody: true,
  );
}
