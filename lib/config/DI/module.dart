import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';
import 'package:template/core/constants/api_path.dart';

import '../../core/middleware/interceptors.dart';
import '../database/app_database.dart';

@module
abstract class AppModule {
  @preResolve
  Future<AppDatabase> get database =>
      $FloorAppDatabase.databaseBuilder('app_database.db').build();

  @lazySingleton
  Dio dio(@Named('appInterceptors') AppInterceptors appInterceptors) {
    final dio = Dio(BaseOptions(baseUrl: ApiPath.baseUrl));
    dio.interceptors.add(appInterceptors);
    dio.interceptors.add(dioLogger());
    dio.interceptors.add(
      InterceptorsWrapper(
        onError: (DioError e, handler) async {
          if (e.response?.statusCode == 401) {
            // If a 401 response is received, refresh the access token
            String newAccessToken = await refreshToken();
            if (newAccessToken == "REFRESH_TOKEN_EXPIRED") {
              //  Logout Don't active longtime
            }
            // Update the request header with the new access token
            e.requestOptions.headers['Authorization'] =
                'Bearer $newAccessToken';
            // Repeat the request with the updated header
            return handler.resolve(await dio.fetch(e.requestOptions));
          }
          return handler.next(e);
        },
      ),
    );
    return dio;
  }
}

Future<String> refreshToken() async {
  return 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE2OTU5NTQ5NTQsImp0aSI6IjEwMyIsImlhdCI6MTY5MzM2Mjk1NCwiaXNzIjoiMTAzIn0.9FrUYHumYOvdeR_Pkcl3qMdRzCvf17VI5X7K_lrB6v8';
}
