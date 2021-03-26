import 'package:flutter_web_starter/api/api_client.dart';
import 'package:flutter_web_starter/apps/purchases/purchases.dart';
import 'package:flutter_web_starter/core/config.dart';
import 'package:get/get.dart';

Future initServices() async {
  await AppConfig().load();

  Get.lazyPut(() => ApiClient());

  // Apps
  await initTaskApp();
}
