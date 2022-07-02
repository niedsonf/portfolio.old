import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portfolio/constants/style.dart';
import 'package:portfolio/helpers/responsiveness.dart';

class GlassCard extends StatelessWidget {
  final String text;
  final String? status;
  final Color? color;
  const GlassCard({Key? key, required this.text, this.status, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    double largeMenuWidth = _width / 4;
    double largeMenuHeight = _height / 7;
    double smallMenuHeight = _height / 7;
    double smallMenuWidth = _width / 2;
    return SizedBox(
        width: ResponsiveWidget.isLargeScreen(context)
            ? largeMenuWidth
            : smallMenuWidth,
        height: ResponsiveWidget.isLargeScreen(context)
            ? largeMenuHeight
            : smallMenuHeight,
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(text.toUpperCase(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: light,
                          fontSize: 18,
                          fontWeight: FontWeight.w500)),
                  if (status != null)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(status!.toUpperCase(),
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: color,
                                fontSize: 16,
                                fontWeight: FontWeight.w300)),
                        SizedBox(width: 10),
                        Container(
                          width: 7,
                          height: 7,
                          decoration:
                              BoxDecoration(shape: BoxShape.circle, boxShadow: [
                            BoxShadow(
                                color: light.withOpacity(.3),
                                blurRadius: 5,
                                spreadRadius: 1),
                            BoxShadow(
                              color: color!.withOpacity(.5),
                              blurRadius: 5,
                            ),
                            BoxShadow(
                                color: color!.withOpacity(.6), blurRadius: 1),
                          ]),
                        )
                      ],
                    ),
                ],
              ),
            ),
          ),
        ));
  }
}
