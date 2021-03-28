import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'apps/splashscreen/splashscreen.dart';
import 'routes.dart';
import 'services/app_logger.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: SplashScreen.pageTitle,
      getPages: pages,
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.fade,
      enableLog: true, // !AppConfig.IS_PRODUCTION,
      logWriterCallback: Get.find<AppLogger>().getxLog,
    );
  }
}
