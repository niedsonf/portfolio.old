import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/constants/style.dart';
import 'package:portfolio/helpers/responsiveness.dart';

class SkillTech extends StatefulWidget {
  final String svgDir;
  const SkillTech({Key? key, required this.svgDir}) : super(key: key);

  @override
  State<SkillTech> createState() => _SkillTechState();
}

class _SkillTechState extends State<SkillTech> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 30),
      decoration: BoxDecoration(
          color: dark,
          borderRadius: BorderRadius.horizontal(left: Radius.circular(20))),
      child: SvgPicture.asset(
        widget.svgDir,
        width: !ResponsiveWidget.isSmallScreen(context) ? 80 : 40,
        height: !ResponsiveWidget.isSmallScreen(context) ? 60 : 30,
        semanticsLabel: widget.svgDir + ' logo',
      ),
    );
  }
}
