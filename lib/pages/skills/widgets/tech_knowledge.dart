import 'package:flutter/material.dart';
import 'package:portfolio/constants/style.dart';

class TechKnowledge extends StatelessWidget {
  const TechKnowledge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text('Knowledge:\n', style: TextStyle(color: light, fontSize: 20)),
        Text('Web / Mobile', style: TextStyle(color: light, fontSize: 16)),
        Text('Responsiveness', style: TextStyle(color: light, fontSize: 16)),
        Text('GetX', style: TextStyle(color: light, fontSize: 16)),
        Text('Simple Animations', style: TextStyle(color: light, fontSize: 16)),
        Text('Firebase Integration',
            style: TextStyle(color: light, fontSize: 16)),
        Text('API Consumption', style: TextStyle(color: light, fontSize: 16)),
      ],
    );
  }
}
