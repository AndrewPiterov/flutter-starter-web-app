import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';

class LoginPage extends GetView<SignInController> {
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
            onPressed: () =>
                Navigator.pushReplacementNamed(context, '/main/home'),
            child: Text('Log In'),
          ),
        ],
      ),
    );
  }
}
