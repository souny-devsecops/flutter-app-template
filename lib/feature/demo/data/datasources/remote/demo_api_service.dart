import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:template/feature/demo/data/models/demo_model.dart';
import 'package:template/feature/demo/data/models/post_model.dart';
import 'package:template/feature/demo/data/models/user_model.dart';
import '../../../../../core/constants/api_path.dart';
import 'package:dio/dio.dart';
part 'demo_api_service.g.dart';

@lazySingleton
@RestApi()
abstract class DemoApiService {
  @factoryMethod
  factory DemoApiService(Dio dio) = _DemoApiService;

  @GET("/v3/3a3ad6e7-4b03-434b-9f07-22fd9b5526fc")
  Future<HttpResponse<DataModel>> fetchUser();

  @GET("/v3/3a3ad6e7-4b03-434b-9f07-22fd9b5526fc")
  Future<HttpResponse<ApiResponseModel>> fetchDemo();

  @POST("/posts")
  Future<HttpResponse<PostModel>> postDemo(@Body() Map<String, dynamic> body);
}
