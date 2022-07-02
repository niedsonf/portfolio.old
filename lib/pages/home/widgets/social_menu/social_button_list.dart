import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/constants/style.dart';
import 'package:portfolio/pages/home/widgets/social_menu/social_button.dart';

List<SocialButton> socialButtonList = [
  SocialButton(
      onTap: () {},
      tooltip: 'Currículo',
      icon: Icons.bookmark,
      color: azulCinza,
      backgroundColor: light.withOpacity(.7)),
  SocialButton(
      onTap: () {},
      tooltip: 'Linkedin',
      icon: FontAwesomeIcons.linkedinIn,
      color: azulCinza,
      backgroundColor: light.withOpacity(.7)),
  SocialButton(
      onTap: () {},
      tooltip: 'Whatsapp',
      icon: FontAwesomeIcons.whatsapp,
      color: azulCinza,
      backgroundColor: light.withOpacity(.7)),
  SocialButton(
      onTap: () {},
      tooltip: 'GitHub',
      icon: FontAwesomeIcons.github,
      color: azulCinza,
      backgroundColor: light.withOpacity(.7))
];
