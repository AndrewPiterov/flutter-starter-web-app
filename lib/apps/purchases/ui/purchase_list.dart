import 'package:fluent_result/fluent_result.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_starter/apps/purchase_detail/purchase_detail_page.dart';
import 'package:flutter_web_starter/apps/purchases/models/purchase.dart';
import 'package:flutter_web_starter/apps/purchases/models/purchase_list_response.dart';
import 'package:flutter_web_starter/apps/purchases/services/task_api.dart';
import 'package:get/get.dart';

class PurchaseListView extends StatelessWidget {
  static const pageTitle = '/PurchaseList';
  static GetPage page =
      GetPage(name: pageTitle, page: () => PurchaseListView());

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
          return ListView.builder(
            itemCount: purchases.length,
            itemBuilder: (_, index) {
              return Padding(
                padding: const EdgeInsets.all(20.0),
                child: GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => PurchaseDetailPage(
                                purchase: Purchase(1, 123, 'some date')))),
                    child: Text(purchases.elementAt(index).price.toString())),
              );
            },
          );
        },
      ),
    );
  }
}
