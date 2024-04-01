import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.borderRadius,
      required this.backgroundColor,
      required this.color,
      required this.text,
      required this.textStyle});
  final BorderRadiusGeometry borderRadius;
  final Color? backgroundColor;
  final Color? color;
  final String text;
  final TextStyle textStyle;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 180,
      child: TextButton(
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(borderRadius: borderRadius),
            backgroundColor: backgroundColor,
          ),
          onPressed: () {},
          child: Text(
            text,
            style: textStyle.copyWith(color: color),
          )),
    );
  }
}
