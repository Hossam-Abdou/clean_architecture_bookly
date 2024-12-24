import 'package:flutter/material.dart';

// class AppStyles{
//
//   static const mediumTextStyle = TextStyle(
//     fontSize: 20,
//     fontWeight: FontWeight.w600,
//     color: Colors.black
//   );
//
//
//
// }
//
// TextStyle _getTextStyle(double fontSize, FontWeight fontWeight, Color color) {
//   return TextStyle(
//       fontSize: fontSize,
//       color: color,
//       fontWeight: fontWeight);
//
//
// }  TextStyle getMediumStyle(
//     {double fontSize = 20, Color color =   Colors.white}) {
//   return _getTextStyle(fontSize,  FontWeight.w600, color,);
// }

// -----------------//


abstract class Styles {
  static const textStyle18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );
  static const textStyle20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.normal,
  );
  static const textStyle30 = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w900,
    // fontFamily: kGtSectraFine,
    letterSpacing: 1.2,
  );
  static const textStyle14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );

  static const textStyle16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
}

const TextStyle textStyle = TextStyle();