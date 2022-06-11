import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../resources/resources.dart';

class CustomTextFormField extends StatefulWidget {
  final Icon prefixIcon;
  final Widget prefix;
  final String labelText;
  final TextStyle labelStyle;
  final double borderRadius;
  final Color borderSideColor;
  final double borderSideWidth;
  final TextInputType textInputType;
  final TextInputAction textInputAction;
  final bool obscureText;
  final int maxLine;
  final int minLine;
  final Function onChanged;
  final TextEditingController controller;
  final Function onFieldSubmitted;
  final Function validator;
  final Icon suffixIcon;
  final String suffixText;
  final TextStyle suffixTextStyle;
  final String hintText;
  final TextStyle hintTextStyle;
  final bool filled;
  final Color fillColor;
  final String prefixText;
  final TextStyle prefixTextStyle;
  final Widget suffix;
  final double height;
  final String errorMessage;

  CustomTextFormField({
    Key? key,
    required this.prefixIcon,
    required this.prefix,
    required this.labelText,
    required this.labelStyle,
    required this.borderRadius,
    required this.borderSideColor,
    required this.borderSideWidth,
    required this.textInputType,
    required this.textInputAction,
    required this.obscureText,
    required this.maxLine,
    required this.minLine,
    required this.onChanged,
    required this.controller,
    required this.onFieldSubmitted,
    required this.validator,
    required this.suffixIcon,
    required this.suffixText,
    required this.suffixTextStyle,
    required this.hintText,
    required this.filled,
    required this.fillColor,
    required this.prefixText,
    required this.prefixTextStyle,
    required this.suffix,
    required this.height,
    required this.hintTextStyle,
    required this.errorMessage,
  }) : super(key: key);

  @override
  _CustomTextFormFieldState createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height ?? Dimens.size50,
      child: TextFormField(
        maxLines: widget.maxLine,
        minLines: widget.minLine,
        onChanged: (value) => widget.onChanged,
        controller: widget.controller,
        onFieldSubmitted: (value) => widget.onFieldSubmitted,
        validator:(value) {
          if(value!.isEmpty){
            return widget.errorMessage;
          }
        },
        keyboardType: widget.textInputType,
        textInputAction: widget.textInputAction,
        obscureText: widget.obscureText ?? false,
        decoration: InputDecoration(
          prefixIcon: widget.prefixIcon,
          prefix: widget.prefix,
          labelText: widget.labelText,
          labelStyle: widget.labelStyle ??
            TextStyle(
              color: ColorResources.blackColor,
              fontSize: Dimens.size18,
            ),
          suffixIcon: widget.suffixIcon,
          suffix: widget,
          suffixStyle: widget.suffixTextStyle ??
            TextStyle(
              color: ColorResources.blackColor,
              fontSize: Dimens.size18,
            ),
          suffixText: widget.suffixText,
          border:OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.borderRadius),
            borderSide: BorderSide(
              color: widget.borderSideColor,
              width: widget.borderRadius,
            ) ??
              BorderSide.none,
          ),
          hintStyle: widget.hintTextStyle ??
            TextStyle(
              color: ColorResources.blackColor,
              fontSize: Dimens.size18,
            ),
          hintText: widget.hintText,
          filled: widget.filled ?? false,
          fillColor: widget.fillColor,
          prefixStyle: widget.prefixTextStyle ??
            TextStyle(
              color: ColorResources.blackColor,
              fontSize: Dimens.size18,
            ),
          prefixText: widget.prefixText,
        ),
      ),
    );
  }
}


