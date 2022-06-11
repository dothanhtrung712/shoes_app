// import 'package:flutter/material.dart';
// import 'package:shoes_app/resources/resources.dart';
//
// class CustomAppBar extends StatefulWidget {
//   final Color backgroundColor;
//   final double iconSize;
//   final double splashRadius;
//   final Function onPressed;
//   final Widget Icons;
//   final Color colorIcon;
//   final double fontSize;
//   final double fontWeight;
//   final Color colorText;
//   final String tilleText;
//
//
//   const CustomAppBar({
//     Key? key,
//     required this.backgroundColor,
//     required this.iconSize,
//     required this.splashRadius,
//     required this.onPressed,
//     required this.Icons,
//     required this.colorIcon,
//     required this.fontSize,
//     required this.fontWeight,
//     required this.colorText,
//     required this.tilleText,
//
//   }) : super(key: key);
//
//
//   @override
//   _CustomAppBarState createState() => _CustomAppBarState();
// }
//
// class _CustomAppBarState extends State<CustomAppBar> {
//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       backgroundColor: widget.backgroundColor,
//       leading: IconButton(
//         iconSize: widget.iconSize,
//         splashRadius: widget.splashRadius,
//         onPressed:() =>  widget.onPressed,
//         icon: Icon(
//           color: widget.colorIcon,
//           Icons,
//         ) ,
//       ),
//       title: widget.tilleText ??
//         TextStyle(
//           fontSize: widget.fontSize,
//           fontWeight: widget.fontWeight,
//           color: widget.colorText,
//         ),
//
//       ),
//       actions: [
//       ],
//     );
//   }
// }
