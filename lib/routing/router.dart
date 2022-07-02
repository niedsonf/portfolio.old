import 'package:flutter/material.dart';
import 'package:portfolio/pages/about/about.dart';
import 'package:portfolio/pages/home/home.dart';
import 'package:portfolio/pages/portfolio/portfolio.dart';
import 'package:portfolio/pages/skills/skills.dart';
import 'package:portfolio/routing/routes.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomePageRoute:
      return _getPageRoute(HomePage());
    case AboutPageRoute:
      return _getPageRoute(AboutPage());
    case SkillsPageRoute:
      return _getPageRoute(SkillsPage());
    case PortfolioPageRoute:
      return _getPageRoute(PortfolioPage());
    default:
      return _getPageRoute(HomePage());
  }
}

PageRoute _getPageRoute(Widget page) =>
    MaterialPageRoute(builder: (context) => page);
