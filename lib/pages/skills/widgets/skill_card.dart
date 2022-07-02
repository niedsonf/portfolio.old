import 'package:flutter/material.dart';
import 'package:portfolio/constants/style.dart';
import 'package:portfolio/helpers/responsiveness.dart';
import 'package:portfolio/pages/skills/widgets/level_range.dart';
import 'package:portfolio/pages/skills/widgets/tech_knowledge.dart';

class SkillCard extends StatefulWidget {
  final String title;
  final int level;
  const SkillCard({Key? key, required this.title, required this.level})
      : super(key: key);

  @override
  State<SkillCard> createState() => _SkillCardState();
}

class _SkillCardState extends State<SkillCard> {
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return Container(
      width: _width * 0.60,
      height: _height,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: dark, borderRadius: BorderRadius.all(Radius.circular(15))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            widget.title,
            style: TextStyle(color: light, fontSize: 30),
          ),
          Divider(
            height: 3,
            color: light,
          ),
          LevelRange(),
          TechKnowledge()
        ],
      ),
    );
  }
}
