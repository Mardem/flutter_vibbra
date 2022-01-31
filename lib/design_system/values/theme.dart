import 'package:flutter/material.dart';

import 'colors.dart' as colors;
import 'dimens.dart' as dimens;

final ThemeData appTheme = ThemeData(
  primaryColor: colors.primaryColor,
  primaryColorDark: colors.primaryDarkColor,
  errorColor: colors.errorColor,
  disabledColor: colors.disabledColor,
  scaffoldBackgroundColor: colors.backgroundColor,
  appBarTheme: const AppBarTheme(
    color: colors.backgroundColor,
    iconTheme: IconThemeData(color: colors.accentColor),
    elevation: 0,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          dimens.borderRadius,
        ),
      ),
      padding: const EdgeInsets.all(16),
      elevation: dimens.elevation,
      primary: colors.accentColor,
      textStyle: const TextStyle(
        fontSize: dimens.fontText,
      ),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          dimens.borderRadius,
        ),
      ),
      padding: const EdgeInsets.all(16),
      primary: colors.accentColor,
      textStyle: const TextStyle(
        fontSize: dimens.fontText,
      ),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      textStyle: const TextStyle(
        color: colors.accentColor,
        fontSize: dimens.fontText,
        //fontWeight: FontWeight.bold
      ),
    ),
  ),
);
