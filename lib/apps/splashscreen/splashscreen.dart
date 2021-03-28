import 'package:flutter/material.dart';
import 'package:flutter_web_starter/apps/splashscreen/bindings.dart';
import 'package:flutter_web_starter/apps/splashscreen/splashscreen_controller.dart';
import 'package:get/get.dart';

class SplashScreen extends GetView<SplashScreenController> {
  static const pageTitle = '/SplashScreen';

  static final page = GetPage(
    name: pageTitle,
    page: () => SplashScreen(),
    binding: SplashScreenBinding(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Obx(
            () => Text(
              controller.title.value!,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
            ),
          ),
        ),
      ),
    );
  }
}
