import 'package:flutter_web_starter/api/api_client.dart';
import 'package:flutter_web_starter/apps/purchases/purchases.dart';
import 'package:flutter_web_starter/core/config.dart';
import 'package:flutter_web_starter/services/navigation_service.dart';
import 'package:get/get.dart';

import 'app_logger.dart';

export './app_logger.dart';

Future initServices() async {
  await AppConfig().load();

  Get.put(AppLogger());
  Get.put(NavigationService());

  Get.lazyPut(() => ApiClient());

  // Apps
  await initTaskApp();
}
