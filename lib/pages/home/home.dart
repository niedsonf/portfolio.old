import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/constants/style.dart';
import 'package:portfolio/pages/home/widgets/bubble.dart';
import 'package:portfolio/pages/home/widgets/bubbles_effect.dart';
import 'package:portfolio/pages/home/widgets/home_content.dart';
import 'package:portfolio/pages/home/widgets/social_menu/social_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Container(
        padding: const EdgeInsets.all(30),
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [BubblesEffect(), HomeContent()],
        ));
  }
}
