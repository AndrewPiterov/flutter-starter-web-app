import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationService {
  final nestedPageKey = GlobalKey<NavigatorState>();

  final subPageKey = 7;

  Future<T?> toNamed<T>(String page, {dynamic arguments}) async {
    return await Get.toNamed<T>(page, id: subPageKey, arguments: arguments);
  }
}
