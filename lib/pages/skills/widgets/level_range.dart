import 'package:flutter/material.dart';
import 'package:portfolio/constants/style.dart';

class LevelRange extends StatelessWidget {
  const LevelRange({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _cardWidth = _width * 0.5;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Stack(
          alignment: AlignmentDirectional.centerStart,
          children: [
            Container(
                width: _cardWidth * 0.5,
                height: 20,
                decoration: BoxDecoration(
                    color: light,
                    borderRadius: BorderRadius.all(Radius.circular(30)))),
            Container(
                margin: EdgeInsets.only(left: 2.5),
                width: _cardWidth * 0.1,
                height: 15,
                decoration: BoxDecoration(
                    color: azulFurtivo,
                    borderRadius: BorderRadius.all(Radius.circular(30))))
          ],
        ),
        SizedBox(height: 5),
        Text('Advanced', style: TextStyle(color: light, fontSize: 14))
      ],
    );
  }
}
