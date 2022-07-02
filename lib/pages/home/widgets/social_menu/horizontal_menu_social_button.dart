import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portfolio/constants/style.dart';
import 'package:portfolio/helpers/responsiveness.dart';
import 'package:portfolio/pages/home/widgets/social_menu/social_button_list.dart';

class HorizontalMenuSocialButton extends StatefulWidget {
  const HorizontalMenuSocialButton({Key? key}) : super(key: key);

  @override
  State<HorizontalMenuSocialButton> createState() =>
      _HorizontalMenuSocialButtonState();
}

class _HorizontalMenuSocialButtonState
    extends State<HorizontalMenuSocialButton> {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double largeMenuSize = _width / 2;
    double smallMenuSize = _width * 0.95;
    double mediumMenuSize = _width * 0.85;
    return SizedBox(
      width: ResponsiveWidget.isLargeScreen(context)
          ? largeMenuSize
          : ResponsiveWidget.isMediumScreen(context)
              ? largeMenuSize
              : smallMenuSize,
      height: ResponsiveWidget.isLargeScreen(context)
          ? largeMenuSize / 5
          : ResponsiveWidget.isMediumScreen(context)
              ? largeMenuSize / 4
              : smallMenuSize / 5,
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
                padding: EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [...socialButtonList],
                )),
          ),
        ),
      ),
    );
  }
}
