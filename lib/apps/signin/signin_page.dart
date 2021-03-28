import 'package:flutter/material.dart';
import 'package:flutter_web_starter/apps/main/main.dart';
import 'package:get/get.dart';

import 'controller.dart';

class LoginPage extends GetView<SignInController> {
  static const pageTitle = '/SignIn';

  @override
  Widget build(BuildContext context) {
    Get.put(SignInController());
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Text(
              'Login Page',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
            ),
          ),
          ElevatedButton(
            onPressed: () => Get.offAllNamed(MainPage.pageTitle),
            child: Text('Log In'),
          ),
        ],
      ),
    );
  }
}
