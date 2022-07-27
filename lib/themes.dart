import 'package:flutter/material.dart';
class MyThemeData{
  static Color primarycolor = Color(0xFFB7935F);
  static Color blackycolor = Color(0xFF13192D);
  static final ThemeData lighttheme = ThemeData(
    canvasColor: primarycolor,
    scaffoldBackgroundColor: Colors.transparent,
    primaryColor: primarycolor ,
    appBarTheme: AppBarTheme(
        centerTitle: true,
      color: Colors.transparent,
        // backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
      elevation:  0 ,),
    textTheme: TextTheme(
      headline4: TextStyle(
        fontSize: 30,
        color: blackycolor ,
      ),
      headline3: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w400,
        color: blackycolor ,
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    selectedItemColor: Colors.black,
      unselectedItemColor: Colors.white ,
    )

  );
  static final ThemeData darktheme =ThemeData();
}