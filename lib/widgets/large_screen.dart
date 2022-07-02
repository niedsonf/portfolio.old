import 'package:flutter/material.dart';
import 'package:portfolio/helpers/local_navigator.dart';
import 'package:portfolio/widgets/navigation_menu.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: NavigationMenu()),
        Expanded(child: localNavigator(), flex: 8)
      ],
    );
  }
}
