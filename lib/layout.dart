import 'package:flutter/material.dart';
import 'package:portfolio/constants/style.dart';
import 'package:portfolio/helpers/responsiveness.dart';
import 'package:portfolio/widgets/large_screen.dart';
import 'package:portfolio/widgets/menu_floating_button.dart';
import 'package:portfolio/widgets/navigation_menu.dart';
import 'package:portfolio/widgets/small_screen.dart';

class SiteLayout extends StatefulWidget {
  const SiteLayout({Key? key}) : super(key: key);

  @override
  State<SiteLayout> createState() => _SiteLayoutState();
}

class _SiteLayoutState extends State<SiteLayout> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: NavigationMenu(),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: !ResponsiveWidget.isLargeScreen(context)
          ? menuFloatingButton(context, scaffoldKey)
          : null,
      body: ResponsiveWidget.isLargeScreen(context)
          ? LargeScreen()
          : SmallScreen(),
    );
  }
}
