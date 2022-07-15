import 'package:flutter/material.dart';
import 'package:portfolio/constants/controllers.dart';
import 'package:portfolio/routing/router.dart';
import 'package:portfolio/routing/routes.dart';

Navigator localNavigator() => Navigator(
      key: navigationController.navigationKey,
      initialRoute: HomePageRoute,
      onGenerateRoute: generateRoute,
    );
