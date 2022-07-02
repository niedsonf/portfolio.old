import 'package:flutter/material.dart';
import 'package:portfolio/constants/style.dart';

class SocialButton extends StatefulWidget {
  final Function() onTap;
  final IconData icon;
  final String tooltip;
  final Color color;
  final Color backgroundColor;
  const SocialButton(
      {Key? key,
      required this.onTap,
      required this.icon,
      required this.tooltip,
      required this.color,
      required this.backgroundColor})
      : super(key: key);

  @override
  State<SocialButton> createState() => _SocialButtonState();
}

class _SocialButtonState extends State<SocialButton>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;
  bool isHover = false;

  @override
  void initState() {
    controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 150));
    animation = Tween<double>(begin: 1, end: 0.9)
        .animate(CurvedAnimation(parent: controller, curve: Curves.decelerate));
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: widget.tooltip,
      verticalOffset: -60,
      waitDuration: Duration(seconds: 1),
      child: InkWell(
        onTap: () {
          controller.forward().whenComplete(() => controller.reverse());
          widget.onTap;
        },
        onHover: (value) {
          value
              ? setState(() => {isHover = true})
              : setState(() => {isHover = false});
        },
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        child: ScaleTransition(
          scale: animation,
          child: AnimatedContainer(
              duration: Duration(seconds: 2),
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: widget.backgroundColor,
                shape: BoxShape.circle,
              ),
              child: Icon(
                widget.icon,
                color: isHover ? azulFurtivo : widget.color,
                size: 35,
              )),
        ),
      ),
    );
  }
}
