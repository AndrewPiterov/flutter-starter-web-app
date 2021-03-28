import 'package:flutter/material.dart';
import 'package:flutter_web_starter/apps/main/bindings.dart';
import 'package:flutter_web_starter/apps/main/controller.dart';
import 'package:flutter_web_starter/apps/main/routes.dart';
import 'package:flutter_web_starter/services/navigation_service.dart';
import 'package:get/get.dart';

class MainPage extends GetView<MainController> {
  static const pageTitle = '/Main';

  static final page = GetPage(
    name: pageTitle,
    page: () => MainPage(),
    binding: MainBinding(),
  );

  final _subPages = [
    SubRouteNames.dashboard,
    SubRouteNames.customers,
    SubRouteNames.purchases,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.1,
              color: Colors.pinkAccent,
              child: Obx(
                () => Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _subPages.map(
                    (page) {
                      return NavItem(
                        selected: controller.currentPage.value == page,
                        icon: Icons.home,
                        onTap: () => controller.goTo(page),
                      );
                    },
                  ).toList(),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Center(
                child: Navigator(
                  key: Get.nestedKey(Get.find<NavigationService>().subPageKey),
                  initialRoute: SubRouteNames.dashboard,
                  onGenerateRoute: onGenerateRoute,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NavItem extends StatefulWidget {
  final IconData icon;
  final bool selected;
  final Function onTap;

  const NavItem({
    Key? key,
    required this.icon,
    required this.selected,
    required this.onTap,
  }) : super(key: key);
  @override
  _NavItemState createState() => _NavItemState();
}

class _NavItemState extends State<NavItem> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          widget.onTap();
        },
        child: AnimatedContainer(
          duration: Duration(milliseconds: 375),
          width: double.infinity,
          height: 60.0,
          color: widget.selected ? Colors.black87 : Colors.white,
          child: Icon(
            widget.icon,
            color: widget.selected ? Colors.white : Colors.black87,
          ),
        ),
      ),
    );
  }
}
