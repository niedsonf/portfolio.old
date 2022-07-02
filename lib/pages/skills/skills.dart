import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/constants/style.dart';
import 'package:portfolio/pages/skills/widgets/slider.dart';

class SkillsPage extends StatelessWidget {
  SkillsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    return SkillsSlider();
  }
}
