import 'package:flutter_web_starter/apps/purchases/services/task_api.dart';
import 'package:get/get.dart';

export './ui/purchase_list.dart';

Future initTaskApp() async {
  Get.lazyPut(() => PurchaseApi());
}
