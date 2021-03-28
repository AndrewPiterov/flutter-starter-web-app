import 'package:flutter_web_starter/services/navigation_service.dart';
import 'package:get/get.dart';

import 'routes.dart';

class MainController extends GetxController {
  final currentPage = SubRouteNames.customers.obs;

  final NavigationService _navigationService;

  MainController({NavigationService? navigationService})
      : _navigationService = navigationService ?? Get.find();

  Future goTo(String page) async {
    Get.offAllNamed(page, id: _navigationService.subPageKey);
    currentPage.value = page;
  }
}
