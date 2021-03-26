import 'package:dio/dio.dart';
import 'package:flutter_web_starter/core/config.dart';

import 'rest_client.dart';

class ApiClient {
  // ApiClient({AccessTokenService accessTokenService})
  //     : _accessTokenService = accessTokenService ?? Get.find();

  // final AccessTokenService _accessTokenService;

  RestClient? _client;

  Future<RestClient> getClient() async {
    if (_client != null) {
      return _client!;
    }

    final dio = Dio();

    final headers = {
      'Authorization': 'Bearer ' + AppConfig.TOKEN,
      'Accept': 'application/json',
      // 'Content-Type': 'application/x-www-form-urlencoded'
    };

    // if (!stringIsNullOrEmpty(_accessTokenService.token)) {
    //   headers['user-token'] = '${_accessTokenService.token}';
    // }

    dio.options.headers = headers;

    final client = RestClient(dio, baseUrl: AppConfig.API_ENDPOINT);
    return client;
  }
}
