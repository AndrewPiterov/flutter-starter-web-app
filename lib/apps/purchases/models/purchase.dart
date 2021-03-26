import 'package:json_annotation/json_annotation.dart';

part 'purchase.g.dart';

@JsonSerializable()
class Purchase {
  final int purchaseId;
  final num price;
  final String purchasedAt;

  factory Purchase.fromJson(Map<String, dynamic> json) =>
      _$PurchaseFromJson(json);

  Purchase(this.purchaseId, this.price, this.purchasedAt);

  Map<String, dynamic> toJson() => _$PurchaseToJson(this);
}
