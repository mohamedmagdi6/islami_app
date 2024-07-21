import 'package:flutter/material.dart';
import 'package:islami_app/constant.dart';

class MyThemData {
  static ThemeData lightTheme = ThemeData(
    appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w700,
          color: kBlackColor,
        )),
    scaffoldBackgroundColor: Colors.transparent,
    fontFamily: 'El Messiri',
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      backgroundColor: kPrimaryColor,
      showUnselectedLabels: false,
      selectedItemColor: kBlackColor,
      unselectedItemColor: Colors.white,
      selectedIconTheme: IconThemeData(
        size: 50,
      ),
      unselectedIconTheme: IconThemeData(size: 50),
    ),
    dividerTheme: const DividerThemeData(
      color: kPrimaryColor,
      thickness: 3,
    ),
    textTheme: const TextTheme(
        bodyLarge: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w600,
        ),
        bodyMedium: TextStyle(
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
          fontSize: 25,
        ),
        bodySmall: TextStyle(
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
          fontSize: 20,
        )),
  );

  // light mode.
  static ThemeData darkTheme = ThemeData(
    appBarTheme: const AppBarTheme(
        foregroundColor: Colors.white,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w700,
          color: Colors.white,
        )),
    scaffoldBackgroundColor: Colors.transparent,
    fontFamily: 'El Messiri',
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      backgroundColor: kDarkPrimaryColor,
      showUnselectedLabels: false,
      selectedItemColor: kYeloowColor,
      unselectedItemColor: Colors.white,
      selectedIconTheme: IconThemeData(
        size: 50,
      ),
      unselectedIconTheme: IconThemeData(size: 50),
    ),
    dividerTheme: const DividerThemeData(
      color: kYeloowColor,
      thickness: 3,
    ),
    textTheme: const TextTheme(
        bodyLarge: TextStyle(
          color: Colors.white,
          fontSize: 25,
          fontWeight: FontWeight.w600,
        ),
        bodyMedium: TextStyle(
          color: Colors.white,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
          fontSize: 25,
        ),
        bodySmall: TextStyle(
          color: Colors.white,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
          fontSize: 20,
        )),
  );
}
