import 'package:flutter/material.dart';
import 'package:flutter_web_starter/apps/purchases/models/purchase.dart';
import 'package:get/get.dart';

class PurchaseDetailPage extends StatelessWidget {
  static const pageTitle = '/PurchaseDetail';
  static GetPage page = GetPage(
      name: pageTitle,
      page: () => PurchaseDetailPage(
            purchase: Purchase(1, 12311, 'purchasedAt'),
          ));

  final Purchase purchase;

  const PurchaseDetailPage({
    Key? key,
    required this.purchase,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [Text('Price: ' + purchase.price.toString())],
        ),
      ),
    );
  }
}
