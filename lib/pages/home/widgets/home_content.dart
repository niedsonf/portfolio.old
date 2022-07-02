import 'package:flutter/material.dart';
import 'package:portfolio/constants/style.dart';
import 'package:portfolio/helpers/responsiveness.dart';
import 'package:portfolio/pages/home/widgets/glass_card.dart';
import 'package:portfolio/pages/home/widgets/social_menu/horizontal_menu_social_button.dart';
import 'package:portfolio/pages/home/widgets/social_menu/menu_social_button.dart';

class HomeContent extends StatefulWidget {
  const HomeContent({Key? key}) : super(key: key);

  @override
  State<HomeContent> createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  List<GlassCard> children = [
    GlassCard(
        text: 'contratações:', status: 'estagiando', color: Colors.redAccent),
    GlassCard(
        text: 'freelas:', status: 'disponível', color: Colors.greenAccent),
    GlassCard(
        text: 'Eng. Computação:', status: '5º Período', color: lightYellow),
  ];

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ResponsiveWidget.isLargeScreen(context)
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [...children],
              )
            : Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [...children],
                ),
              ),
        ResponsiveWidget.isLargeScreen(context)
            ? MenuSocialButton()
            : Container(
                margin: EdgeInsets.only(bottom: 80, top: 40),
                child: HorizontalMenuSocialButton())
      ],
    );
  }
}
