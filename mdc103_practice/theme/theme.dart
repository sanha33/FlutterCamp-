import 'package:flutter/material.dart';
import 'colors.dart';


final ThemeData lightTheme1 = ThemeData(

  scaffoldBackgroundColor: kShrineBackgroundWhite,
  cardColor: kShrineBackgroundWhite,
  textSelectionColor: kShrinePink100,
  errorColor: kShrineErrorRed,
  accentColor: kShrineBrown900,
  primaryColor: kShrinePink100,
  textTheme: TextTheme(button: TextStyle(fontSize: 12)),
 // primaryTextTheme: ,
 // accentTextTheme: ,
  elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: kShrinePink100,
        onPrimary: kShrineBrown900,
      )
  ),
  textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        primary: kShrineBrown900,
      )
  ),

);


final ThemeData CardTheme = ThemeData(
  scaffoldBackgroundColor: kShrineBackgroundWhite,
  cardColor: kShrineBackgroundWhite,
  textSelectionColor: kShrinePink100,
  errorColor: kShrineErrorRed,
  accentColor: kShrineBrown900,
  primaryColor: kShrinePink100,
  textTheme: TextTheme(button: TextStyle(fontSize: 12)),
  // primaryTextTheme: ,
  // accentTextTheme: ,
  elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: kShrinePink100,
        onPrimary: kShrineBrown900,
      )
  ),
  textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        primary: kShrineBrown900,
      )
  ),

);

/*
ThemeData _buildShrineTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    accentColor: kShrineBrown900,
    primaryColor: kShrinePink100,


    /*buttonTheme: base.buttonTheme.copyWith(
      buttonColor: kShrinePink100,
      colorScheme: base.colorScheme.copyWith(
        secondary: kShrineBrown900,
      ),
    ),
    buttonBarTheme: base.buttonBarTheme.copyWith(
      buttonTextTheme: ButtonTextTheme.accent,
    ),*/

    // TODO: Add the text themes (103)
    // TODO: Add the icon themes (103)
    // TODO: Decorate the inputs (103)
  );}*/