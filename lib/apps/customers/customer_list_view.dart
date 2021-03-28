import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomerListView extends StatelessWidget {
  static const pageTitle = '/CustomerList';
  static GetPage page =
      GetPage(name: pageTitle, page: () => CustomerListView());

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Customers'),
    );
  }
}
