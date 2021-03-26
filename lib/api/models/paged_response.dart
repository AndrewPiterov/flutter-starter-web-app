import 'page_meta.dart';

abstract class PagedResponse<T> {
  final PageMeta meta;
  final bool isEmpty;
  final List<T> items;

  PagedResponse(
    this.meta,
    this.isEmpty,
    this.items,
  );
}
