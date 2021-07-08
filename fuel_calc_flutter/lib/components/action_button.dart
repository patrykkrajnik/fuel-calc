import 'package:flutter/material.dart';
import 'package:fuel_calc_flutter/constants.dart';

class ActionButton extends StatelessWidget {

  ActionButton({
    required this.onTap,
    required this.buttonTitle
});

  final VoidCallback onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
          overlayColor: MaterialStateColor.resolveWith((states) => Colors.transparent)
      ),
      onPressed: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 50.0),
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            color: ConstantColors.buttonBackgroundColor,
            borderRadius: BorderRadius.circular(20.0)
        ),
        child: Center(
          child: Text(
            buttonTitle,
            style: ConstantTextStyles.buttonTitleStyle,
          ),
        ),
      ),
    );
  }
}