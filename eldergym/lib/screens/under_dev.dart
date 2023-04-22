import 'package:eldergym/constants.dart';
import 'package:flutter/material.dart';

class UnderDev extends StatelessWidget {
  const UnderDev({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // Here the height of the container is 45% of our total height
      decoration: BoxDecoration(
        color: kGreenLightColor,
        image: DecorationImage(
          alignment: Alignment.centerLeft,
          image: AssetImage("assets/images/under_dev.png"),
        ),
      ),
    );
  }
}
