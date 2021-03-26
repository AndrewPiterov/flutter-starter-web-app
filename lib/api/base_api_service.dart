import 'package:get/get.dart';

import 'api_client.dart';
import 'rest_client.dart';

abstract class BaseApiService extends GetxService {
  BaseApiService({
    ApiClient? client,
  }) : _client = client ?? Get.find();
  // ,  _authService = authService ?? Get.find();

  final ApiClient _client;
  Future<RestClient> getClient() async => await _client.getClient();

  // final AuthService _authService;
  // String get userId => _authService.user.ID.toString();
}
