import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ColorApp {
  static Color bgColor = HexColor("#091522");
  static List<Color> gameBackgroundGradient = [
    HexColor("#2f3642"),
    HexColor("#6c5c5f"),
    HexColor("#2a3148"),
    HexColor("#5e352b"),
    HexColor("#52311c"),
    HexColor("#140805"),
  ];

  Color lightPrimaryColor = Colors.orange;
  Color lightSecondaryColor = Colors.black;
  Color lightThirdColor = Colors.white;
  Color lightFourthColor = const Color.fromARGB(249, 246, 220, 90);

  Color darkPrimaryColor = Colors.orange;
  Color darkSecondaryColor = Colors.deepOrangeAccent;
  Color darkThirdColor = Colors.black;
  Color darkFourthColor = const Color.fromARGB(184, 58, 43, 6);

  static ThemeData light = ThemeData(
    useMaterial3: true,
    primaryColor: _colorApp.lightPrimaryColor,
    scaffoldBackgroundColor: _colorApp.lightThirdColor,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: _colorApp.lightPrimaryColor),
    colorScheme: ColorScheme.fromSeed(seedColor: _colorApp.lightThirdColor),
    appBarTheme: const AppBarTheme().copyWith(
      backgroundColor: _colorApp.lightPrimaryColor,
      foregroundColor: _colorApp.lightSecondaryColor,
    ),
  );

  static ThemeData dark = ThemeData(
    useMaterial3: true,
    primaryColor: _colorApp.darkPrimaryColor,
    scaffoldBackgroundColor: _colorApp.darkFourthColor,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: _colorApp.darkPrimaryColor),
    colorScheme: ColorScheme.fromSeed(seedColor: _colorApp.darkFourthColor),
    appBarTheme: const AppBarTheme().copyWith(
      backgroundColor: _colorApp.darkThirdColor,
      foregroundColor: _colorApp.darkPrimaryColor,
    ),
  );
}

ColorApp _colorApp = ColorApp();
