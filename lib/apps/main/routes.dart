import 'package:flutter/material.dart';
import 'package:flutter_web_starter/apps/customers/customer_list_view.dart';
import 'package:flutter_web_starter/apps/dashboard/dashboard.dart';
import 'package:flutter_web_starter/apps/purchase_detail/purchase_detail_page.dart';
import 'package:flutter_web_starter/apps/purchases/models/purchase.dart';
import 'package:flutter_web_starter/apps/purchases/purchases.dart';
import 'package:flutter_web_starter/ui/not_found.dart';
import 'package:get/get.dart';

class SubRouteNames {
  static const dashboard = DashboardView.pageTitle;
  static const customers = CustomerListView.pageTitle;
  static const purchases = PurchaseListView.pageTitle;
  static const purchase = PurchaseDetailPage.pageTitle;
}

Route onGenerateRoute(RouteSettings settings) {
  if (settings.name == SubRouteNames.dashboard) {
    return GetPageRoute(
      settings: settings,
      page: () => DashboardView(),
    );
  }

  if (settings.name == SubRouteNames.customers) {
    return GetPageRoute(
      settings: settings,
      page: () => CustomerListView(),
    );
  }

  if (settings.name == SubRouteNames.purchases) {
    return GetPageRoute(
      settings: settings,
      page: () => PurchaseListView(),
    );
  }

  if (settings.name == SubRouteNames.purchase) {
    return GetPageRoute(
      settings: settings,
      page: () => PurchaseDetailPage(
        purchase: Purchase(1, 11, 'asdasd'),
      ),
    );
  }

  return GetPageRoute(
    settings: settings,
    page: () => NotFoundView(),
  );
}
