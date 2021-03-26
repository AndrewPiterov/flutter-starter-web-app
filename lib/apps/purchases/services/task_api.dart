import 'package:fluent_result/fluent_result.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_web_starter/api/api.dart';
import 'package:flutter_web_starter/apps/purchases/models/purchase_list_response.dart';

class PurchaseApi extends BaseApiService {
  Future<ResultOf<PurchaseListRepponse?>> getAll() async {
    final client = await getClient();

    try {
      final res = await client.getPurchases();
      return ResultOf.success(res);
    } catch (e) {
      debugPrint(e.toString());
      return ResultOf.withException<PurchaseListRepponse>(e as Exception);
    }
  }
}
