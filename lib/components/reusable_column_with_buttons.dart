import 'package:bmi_calculator/components/round_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants.dart';

class ReusableColumnWithButtons extends StatelessWidget {
  ReusableColumnWithButtons({
    this.label,
    this.showedNumber,
    this.plusButtonPressed,
    this.minusButtonPressed,
  });

  final String label;
  final Function plusButtonPressed;
  final Function minusButtonPressed;
  final int showedNumber;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          label,
          style: kLabelTextStyle,
        ),
        Text(
          this.showedNumber.toString(),
          style: kNumberTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RoundIconButton(
              icon: FontAwesomeIcons.minus,
              onPress: minusButtonPressed,
            ),
            SizedBox(
              width: 10.0,
            ),
            RoundIconButton(
              icon: FontAwesomeIcons.plus,
              onPress: plusButtonPressed,
            ),
          ],
        ),
      ],
    );
  }
}
