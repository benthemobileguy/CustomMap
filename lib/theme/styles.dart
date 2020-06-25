import 'package:flutter/material.dart';
import 'package:flutter_custom_map/theme/color.dart';
import 'package:hexcolor/hexcolor.dart';

final Color primaryColor = Hexcolor("#110027");
final Color primaryColorDark = Hexcolor("#000000");

ThemeData appTheme = new ThemeData(
  primaryColor: primaryColor,
  primaryColorDark: primaryColorDark,
  fontFamily: "Gilroy",
  primarySwatch: MaterialColor(
    HexColor.getColorFromHex("#09125D"),
    primarySwatch,
  ),
  // canvasColor: Colors.transparent,
);


Map<int, Color> primarySwatch = {
  50: Color.fromRGBO(9, 18, 93, .1),
  100: Color.fromRGBO(9, 18, 93, .2),
  200: Color.fromRGBO(9, 18, 93, .3),
  300: Color.fromRGBO(9, 18, 93, .4),
  400: Color.fromRGBO(9, 18, 93, .5),
  500: Color.fromRGBO(9, 18, 93, .6),
  600: Color.fromRGBO(9, 18, 93, .7),
  700: Color.fromRGBO(9, 18, 93, .8),
  800: Color.fromRGBO(9, 18, 93, .9),
  900: Color.fromRGBO(9, 18, 93, 1),
};