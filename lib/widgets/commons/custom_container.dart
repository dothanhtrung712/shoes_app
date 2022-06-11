import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:shoes_app/resources/dimens.dart';

class CustomContainer extends StatelessWidget {
  final String title;
  final TextStyle textStyle;
  final Color backgroundColor;
  final Color borderColor;
  final double borderRadius;
  final double paddingHorizontal;
  final double paddingVertical;

  const CustomContainer({
    required this.title,
    required this.textStyle,
    required this.backgroundColor,
    required this.borderColor,
    required this.borderRadius,
    required this.paddingHorizontal,
    required this.paddingVertical,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimens.size50,
      width: Dimens.size160,
      decoration: BoxDecoration(
        color: backgroundColor,
        border: Border.all(
          width: Dimens.size4,
          color: borderColor,
        ),
        borderRadius: BorderRadius.circular(
          borderRadius,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: paddingHorizontal,
          vertical: paddingVertical,
        ),
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: textStyle,
        ),
      ),
    );
  }
}
