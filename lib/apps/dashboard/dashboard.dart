import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardView extends StatelessWidget {
  static const pageTitle = '/Dashboard';
  static GetPage page = GetPage(name: pageTitle, page: () => DashboardView());

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Dashboard'),
    );
  }
}
