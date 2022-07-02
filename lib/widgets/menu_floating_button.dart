import 'package:flutter/material.dart';
import 'package:portfolio/constants/style.dart';

FloatingActionButton menuFloatingButton(
        BuildContext context, GlobalKey<ScaffoldState> scaffoldKey) =>
    FloatingActionButton(
      onPressed: () {
        scaffoldKey.currentState!.openDrawer();
      },
      backgroundColor: dark,
      child: Icon(Icons.menu_rounded, color: azulFurtivo),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30),
        topRight: Radius.circular(10),
        bottomLeft: Radius.circular(10),
        bottomRight: Radius.circular(30),
      )),
    );
