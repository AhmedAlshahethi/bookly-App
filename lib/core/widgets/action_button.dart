import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({
    super.key,
    required this.backgroundColor,
    required this.borderRadius,
    required this.text,
    required this.textColor,
    required this.textSize,
    this.onPressed,
  });
  final Color backgroundColor;
  final BorderRadiusGeometry borderRadius;
  final String text;
  final Color textColor;
  final double textSize;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius,
        ),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: Styles.textStyle18.copyWith(
          color: textColor,
          fontWeight: FontWeight.w900,
          fontSize: textSize,
        ),
      ),
    );
  }
}
