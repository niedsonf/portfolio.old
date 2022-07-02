import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants/style.dart';
import 'package:portfolio/controllers/menu_controller.dart';
import 'package:portfolio/controllers/navigation_controller.dart';
import 'package:portfolio/layout.dart';
import 'package:portfolio/pages/not_found/not_found.dart';
import 'package:portfolio/routing/routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(MenuController());
  Get.put(NavigationController());
  runApp(const Portfolio());
}

class Portfolio extends StatelessWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      unknownRoute: GetPage(name: '/not-found', page: () => NotFoundPage()),
      initialRoute: RootRoute,
      getPages: [GetPage(name: RootRoute, page: () => SiteLayout())],
      title: 'Niedson Portfolio',
      theme: ThemeData(
          scaffoldBackgroundColor: azulCinza,
          textTheme: GoogleFonts.montserratTextTheme()),
    );
  }
}
