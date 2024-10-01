import 'package:flutter/material.dart';

class ThemeApplicationManager {
  static Color primaryColor = Color(0XFFB7935F);
  static Color PrimaryDarkColor=Color(0XFFFACC1D);
  static ThemeData lightTheme = ThemeData(
      primaryColor: primaryColor,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: primaryColor,
        type: BottomNavigationBarType.fixed,
        selectedIconTheme: IconThemeData(
          color: Colors.black,
          size: 45,
        ),
        selectedItemColor: Colors.black,
        selectedLabelStyle: TextStyle(
          fontFamily: 'ElMessiri',
          fontWeight: FontWeight.bold,
          fontSize: 15,
          color: Colors.white,
        ),
        unselectedIconTheme: IconThemeData(
          color: Colors.white,
          size: 33,
        ),
        showUnselectedLabels: false,
        unselectedLabelStyle: TextStyle(
          fontFamily: 'ElMessiri',
          fontWeight: FontWeight.w700,
          fontSize: 15,
          color: Colors.white,
        ),
      ),
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        titleTextStyle: TextStyle(
          fontFamily: 'ElMessiri',
          fontSize: 30,
          fontWeight: FontWeight.w700,
          color: Color(0XFF242424),
        ),
        backgroundColor: Colors.transparent,
      ),
    textTheme: TextTheme(

      bodyLarge:TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 25,
        fontFamily: 'ElMessiri',
        color: Color(0XFF242424),
      ),
      bodyMedium:TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 25,
              fontFamily: 'ElMessiri',
        color: Color(0XFF242424),
            ) ,
      bodySmall:TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 20,
        fontFamily: 'ElMessiri',
        color: Color(0XFF242424),
      ),
      titleLarge:TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 30,
        fontFamily: 'ElMessiri',
        color: Color(0XFF242424),
      ),
    ),
    dividerTheme: DividerThemeData(
      color:primaryColor,
    )
  );
  static ThemeData darkTheme = ThemeData(
      primaryColorDark: PrimaryDarkColor,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Color(0XFF141A2E),
        type: BottomNavigationBarType.fixed,
        selectedIconTheme: IconThemeData(
          color: PrimaryDarkColor,
          size: 45,
        ),
        selectedItemColor: PrimaryDarkColor,
        selectedLabelStyle: TextStyle(
          fontFamily: 'ElMessiri',
          fontWeight: FontWeight.bold,
          fontSize: 15,
          color: PrimaryDarkColor,
        ),
        unselectedIconTheme: IconThemeData(
          color: Colors.white,
          size: 33,
        ),
        showUnselectedLabels: false,
        unselectedLabelStyle: TextStyle(
          fontFamily: 'ElMessiri',
          fontWeight: FontWeight.w700,
          fontSize: 15,
          color: Colors.white,
        ),
      ),
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        titleTextStyle: TextStyle(
          fontFamily: 'ElMessiri',
          fontSize: 30,
          fontWeight: FontWeight.w700,
          color: Colors.white,
        ),
        backgroundColor: Colors.transparent,
      ),
      textTheme: TextTheme(

        bodyLarge:TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 25,
          fontFamily: 'ElMessiri',
          color: Colors.white,
        ),
        bodyMedium:TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 25,
          fontFamily: 'ElMessiri',
          color: Colors.white,
        ) ,
        bodySmall:TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 20,
          fontFamily: 'ElMessiri',
          color: Colors.white,
        ),
        titleLarge:TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 30,
          fontFamily: 'ElMessiri',
          color: Colors.white,
        ),


      ),
      dividerTheme: DividerThemeData(
        color:PrimaryDarkColor,
      )
  );
}
