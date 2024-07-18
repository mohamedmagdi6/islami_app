import 'package:flutter/material.dart';
import 'package:islami_app/constant.dart';

class MyThemData {
  static ThemeData lightTheme = ThemeData(
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w700,
          color: KBlackColor,
        )),
    scaffoldBackgroundColor: Colors.transparent,
    fontFamily: 'El Messiri',
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      backgroundColor: kPrimaryColor,
      showUnselectedLabels: false,
      selectedItemColor: KBlackColor,
      unselectedItemColor: Colors.white,
      selectedIconTheme: IconThemeData(
        size: 50,
      ),
      unselectedIconTheme: IconThemeData(size: 50),
    ),
    dividerTheme: DividerThemeData(
      color: kPrimaryColor,
      thickness: 3,
    ),
  );
  static ThemeData darkTheme = ThemeData(
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w700,
          color: Colors.white,
        )),
    scaffoldBackgroundColor: Colors.transparent,
    fontFamily: 'El Messiri',
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
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
    dividerTheme: DividerThemeData(
      color: kYeloowColor,
      thickness: 3,
    ),
  );
}
