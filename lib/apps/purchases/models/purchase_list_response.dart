import 'package:flutter_web_starter/api/models/models.dart';
import 'package:flutter_web_starter/apps/purchases/models/purchase.dart';

import 'package:json_annotation/json_annotation.dart';

part 'purchase_list_response.g.dart';

@JsonSerializable()
class PurchaseListRepponse extends PagedResponse<Purchase> {
  PurchaseListRepponse(PageMeta meta, bool isEmpty, List<Purchase> items)
      : super(meta, isEmpty, items);

  factory PurchaseListRepponse.fromJson(Map<String, dynamic> json) =>
      _$PurchaseListRepponseFromJson(json);
  Map<String, dynamic> toJson() => _$PurchaseListRepponseToJson(this);
}
