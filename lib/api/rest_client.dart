import 'package:flutter_web_starter/apps/purchases/models/purchase_list_response.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'rest_client.g.dart';

@RestApi()
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("/api/v1/purchases")
  Future<PurchaseListRepponse> getPurchases();
}
