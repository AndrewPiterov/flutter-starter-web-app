import 'package:flutter_web_starter/ui/not_found.dart';
import 'package:get/get.dart';

import 'apps/main/main.dart';
import 'apps/signin/signin_page.dart';
import 'apps/splashscreen/splashscreen.dart';

final pages = [
  SplashScreen.page,
  GetPage(
    name: LoginPage.pageTitle,
    page: () => LoginPage(),
  ),
  MainPage.page,
  GetPage(
    name: NotFoundView.pageTitle,
    page: () => NotFoundView(),
  ),
];
