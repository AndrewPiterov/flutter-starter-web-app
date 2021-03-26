import 'package:json_annotation/json_annotation.dart';

part 'page_meta.g.dart';

@JsonSerializable()
class PageMeta {
  final int pageNumber;
  final bool hasNext;

  PageMeta(
    this.pageNumber,
    this.hasNext,
  );

  factory PageMeta.fromJson(Map<String, dynamic> json) =>
      _$PageMetaFromJson(json);
  Map<String, dynamic> toJson() => _$PageMetaToJson(this);

  /*
   "meta": {
    "pageNumber": 1,
    "offset": 0,
    "size": 50,
    "totalElements": 365,
    "totalPages": 8,
    "hasPrev": false,
    "hasNext": true
  },
  "isEmpty": false
  */
}
