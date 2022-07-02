import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/constants/style.dart';
import 'package:portfolio/routing/routes.dart';

class MenuController extends GetxController {
  static MenuController instance = Get.find();

  var activeItem = HomePageDisplayName.obs;
  var hoverItem = ''.obs;

  changeActiveItemTo(String itemName) {
    activeItem.value = itemName;
  }

  onHover(String itemName) {
    if (!isActive(itemName)) hoverItem.value = itemName;
  }

  isActive(String itemName) => activeItem.value == itemName;
  isHovering(String itemName) => hoverItem.value == itemName;

  Widget _customIcon(IconData icon, String itemName) {
    return isActive(itemName)
        ? Icon(icon, size: 18, color: isHovering(itemName) ? dark : azulFurtivo)
        : Icon(icon,
            size: 16, color: isHovering(itemName) ? dark : azulFurtivo);
  }

  Widget returnIconFor(String itemName) {
    switch (itemName) {
      case HomePageDisplayName:
        return _customIcon(Icons.home, itemName);
      case AboutPageDisplayName:
        return _customIcon(Icons.account_circle_rounded, itemName);
      case SkillsPageDisplayName:
        return _customIcon(FontAwesomeIcons.trophy, itemName);
      case PortfolioPageDisplayName:
        return _customIcon(FontAwesomeIcons.addressBook, itemName);
      default:
        return _customIcon(FontAwesomeIcons.houseTsunami, itemName);
    }
  }
}
