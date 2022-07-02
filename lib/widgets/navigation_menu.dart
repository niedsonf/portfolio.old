import 'package:flutter/material.dart';
import 'package:portfolio/constants/controllers.dart';
import 'package:portfolio/constants/style.dart';
import 'package:portfolio/helpers/responsiveness.dart';
import 'package:portfolio/routing/routes.dart';
import 'package:portfolio/widgets/navigation_menu_item.dart';

class NavigationMenu extends StatefulWidget {
  const NavigationMenu({Key? key}) : super(key: key);

  @override
  State<NavigationMenu> createState() => _NavigationMenuState();
}

class _NavigationMenuState extends State<NavigationMenu> {
  List<NavigationMenuItem> getMenuItems() => menuItems
      .map((e) => NavigationMenuItem(
            itemName: e.name,
            onTap: () {
              if (!ResponsiveWidget.isLargeScreen(context)) {
                Navigator.pop(context);
              }
              if (!menuController.isActive(e.name)) {
                menuController.changeActiveItemTo(e.name);
                navigationController.navigateTo(e.route);
              }
            },
          ))
      .toList();

  @override
  Widget build(BuildContext context) {
    return Container(
        color: dark,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...getMenuItems(),
          ],
        ));
  }
}
