import 'package:flutter_web_starter/apps/signin/signin_page.dart';
import 'package:get/get.dart';

class SplashScreenController extends GetxController {
  final title = 'Splash Screen...'.obs;

  @override
  void onReady() {
    super.onReady();

    Future.delayed(
        Duration(seconds: 1), () => Get.offAllNamed(LoginPage.pageTitle));
  }
}
