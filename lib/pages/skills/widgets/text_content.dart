import 'package:flutter/material.dart';

class Tech {
  final String title;
  final String iconURL;
  final int level;
  Tech(this.title, this.level, this.iconURL);
}

final List<Tech> techList = [
  Tech('Flutter', 3, 'assets/tech-logo/flutter.svg')
];

final List<String> logosURL = [
  'assets/tech-logo/figma.svg',
  'assets/tech-logo/firebase.svg',
  'assets/tech-logo/flutter.svg',
  'assets/tech-logo/github.svg',
  'assets/tech-logo/photoshop.svg',
  'assets/tech-logo/python.svg',
];
