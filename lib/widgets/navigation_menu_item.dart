import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/constants/controllers.dart';
import 'package:portfolio/constants/style.dart';

class NavigationMenuItem extends StatelessWidget {
  final String itemName;
  final Function() onTap;

  const NavigationMenuItem(
      {Key? key, required this.itemName, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: onTap,
      onHover: (value) =>
          value ? menuController.onHover(itemName) : menuController.onHover(''),
      child: Obx(() => AnimatedContainer(
            duration: Duration(milliseconds: 500),
            height: _height / 8,
            decoration: BoxDecoration(
              color: menuController.isHovering(itemName)
                  ? azulFurtivo.withOpacity(.5)
                  : dark,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: Container()),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    menuController.returnIconFor(itemName),
                    Text(itemName,
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize:
                                menuController.isActive(itemName) ? 16 : 14,
                            color: menuController.isHovering(itemName)
                                ? dark
                                : azulFurtivo)),
                  ],
                ),
                Expanded(child: Container()),
                AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  width: 6,
                  height: menuController.isHovering(itemName) ||
                          menuController.isActive(itemName)
                      ? _height / 8
                      : 0,
                  color: azulFurtivo,
                )
                /*Visibility(
                    maintainAnimation: true,
                    maintainSize: true,
                    maintainState: true,
                    visible: menuController.isActive(itemName),
                    child: Container(
                      width: 6,
                      height: _height / 8,
                      color: purple,
                    ))*/
              ],
            ),
          )),
    );
  }
}
