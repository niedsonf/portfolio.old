import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/constants/style.dart';
import 'package:portfolio/helpers/responsiveness.dart';
import 'package:portfolio/pages/home/widgets/social_menu/social_button.dart';
import 'package:portfolio/pages/home/widgets/social_menu/social_button_list.dart';

class MenuSocialButton extends StatefulWidget {
  const MenuSocialButton({Key? key}) : super(key: key);

  @override
  State<MenuSocialButton> createState() => _MenuSocialButtonState();
}

class _MenuSocialButtonState extends State<MenuSocialButton> {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double menuSize = _width / 5;
    return SizedBox(
      width: menuSize,
      height: menuSize,
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: light.withOpacity(.5)),
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomCenter,
                    colors: [light.withOpacity(.1), light.withOpacity(.05)]),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Padding(
                padding: ResponsiveWidget.isSmallScreen(context)
                    ? EdgeInsets.all(0)
                    : EdgeInsets.all(25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    socialButtonList[0],
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          socialButtonList[1],
                          socialButtonList[2],
                        ]),
                    socialButtonList[3]
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
