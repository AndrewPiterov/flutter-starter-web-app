import 'package:fluent_result/fluent_result.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_starter/apps/purchases/models/purchase_list_response.dart';
import 'package:flutter_web_starter/apps/purchases/services/task_api.dart';
import 'package:get/get.dart';

class PurchaseListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder<ResultOf<PurchaseListRepponse?>>(
        future: Get.find<PurchaseApi>().getAll(),
        builder: (_, snap) {
          if (!snap.hasData) {
            return CircularProgressIndicator();
          }

          if (snap.data!.isFail) {
            return Center(
              child: Text('Some error occured'),
            );
          }

          final purchases = snap.data!.value!.items;
          final count = purchases.length;
          return Center(
            child: Text('Purchase count: $count'),
          );
        },
      ),
    );
  }
}
