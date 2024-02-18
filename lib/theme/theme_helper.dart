//
// @Author: "Eldor Turgunov"
// @Date: 30.01.2024
//

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ThemeHelper {
  final lightTheme = ThemeData.light().copyWith(
    primaryColor: const Color(0xFF0EBE7F),
    primaryColorLight: const Color(0xFF0EBE7F),
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      centerTitle: false,
      systemOverlayStyle: SystemUiOverlayStyle.light,
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 18.0
      ),
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: Color(0xFFFBA62B),
      textTheme: ButtonTextTheme.primary,
    ),
  );
  final darkTheme = ThemeData.dark().copyWith(
    primaryColor: const Color(0xFFFB9400),
    scaffoldBackgroundColor: const Color(0xFF181A20),
    appBarTheme: const AppBarTheme(
      color: Color(0xFF181A20),
      systemOverlayStyle: SystemUiOverlayStyle.dark,
      titleTextStyle: TextStyle(
        color: Colors.white,
          fontSize: 18.0
      ),
    ),
  );
}
