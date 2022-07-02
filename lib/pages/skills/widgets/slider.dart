import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/constants/style.dart';
import 'package:portfolio/pages/skills/widgets/skill_card.dart';
import 'package:portfolio/pages/skills/widgets/skill_tech.dart';
import 'package:portfolio/pages/skills/widgets/text_content.dart';

class SkillsSlider extends StatefulWidget {
  SkillsSlider({Key? key}) : super(key: key);

  @override
  State<SkillsSlider> createState() => _SkillsSliderState();
}

class _SkillsSliderState extends State<SkillsSlider>
    with TickerProviderStateMixin {
  final CarouselController _carouselController = CarouselController();
  late AnimationController _upButtonAniController;
  late AnimationController _bottomButtonAniController;
  late Animation<Offset> upButtonAnimation;
  late Animation<Offset> bottomButtonAnimation;

  @override
  void initState() {
    _upButtonAniController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 100));
    _bottomButtonAniController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 100));
    upButtonAnimation = Tween<Offset>(begin: Offset(0, 0), end: Offset(0, -1))
        .animate(CurvedAnimation(
            parent: _upButtonAniController, curve: Curves.easeInOut));
    bottomButtonAnimation =
        Tween<Offset>(begin: Offset(0, 0), end: Offset(0, 1)).animate(
            CurvedAnimation(
                parent: _bottomButtonAniController, curve: Curves.easeInOut));
    super.initState();
  }

  @override
  void dispose() {
    _upButtonAniController.dispose();
    _bottomButtonAniController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(width: 20),
        Container(
          height: _height * 0.3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SlideTransition(
                position: upButtonAnimation,
                child: IconButton(
                    splashColor: light,
                    splashRadius: 25,
                    hoverColor: light.withOpacity(.7),
                    highlightColor: light,
                    onPressed: () {
                      _upButtonAniController
                          .forward()
                          .whenComplete(() => _upButtonAniController.reverse());
                      _carouselController.nextPage();
                    },
                    icon:
                        Icon(FontAwesomeIcons.arrowUp, size: 25, color: dark)),
              ),
              SlideTransition(
                position: bottomButtonAnimation,
                child: IconButton(
                    onPressed: () {
                      _bottomButtonAniController.forward().whenComplete(
                          () => _bottomButtonAniController.reverse());
                      _carouselController.previousPage();
                    },
                    splashColor: light,
                    splashRadius: 25,
                    hoverColor: light.withOpacity(.7),
                    highlightColor: light,
                    icon: Icon(FontAwesomeIcons.arrowDown,
                        size: 25, color: dark)),
              )
            ],
          ),
        ),
        Expanded(child: Container()),
        Expanded(
          flex: 100,
          child: Container(
            height: _height,
            child: CarouselSlider(
                carouselController: _carouselController,
                items: techList
                    .map((e) => Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SkillTech(
                              svgDir: e.iconURL,
                            ),
                            Transform.translate(
                                offset: Offset(-20, 0),
                                child:
                                    SkillCard(title: e.title, level: e.level)),
                          ],
                        ))
                    .toList(),
                options: CarouselOptions(
                    aspectRatio: 2.0,
                    enlargeCenterPage: true,
                    scrollDirection: Axis.vertical,
                    viewportFraction: 0.60)),
          ),
        ),
        SizedBox(width: 10),
      ],
    );
  }
}
