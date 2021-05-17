import 'package:flutter/material.dart';

const Color titleTextColor = Color(0xFF707070);
const Color contextTextColor = Color(0xFFB2B2B2);
const Color BoxBorderColor = Color(0xFFDCDCDC);
const Color activeContextTextColor = Color(0xFF6E8AD5);
const Color textColor2 = Color(0xFFEF505C);
const Color textColor3 = Colors.white;
const Color textColor4 = Color(0xFF2E2E2E);
const Color skillContainerColor = Color(0xFFE6EBF8);
Color buttonColor = createMaterialColor(Color(0xFFEB1C2C));





MaterialColor createMaterialColor(Color color) {
  List strengths = <double>[.05];
  Map swatch = <int, Color>{};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  strengths.forEach((strength) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  });
  return MaterialColor(color.value, swatch);
}
