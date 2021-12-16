import 'package:flutter/material.dart';
import 'package:refercare/core/_constants/_colors.dart';

ThemeData theme() {
  final BorderRadius borderRadius = BorderRadius.circular(36);

  return ThemeData(
    primaryColor: ConstColors.primary,
    fontFamily: 'SourceSansPro',
    brightness: Brightness.light,
    // errorColor: ConstColors.error,
    bottomSheetTheme:
        const BottomSheetThemeData(backgroundColor: Colors.transparent),
    textTheme: TextTheme(
      button: const TextStyle(
        color: Colors.white,
        fontSize: 18.0,
        fontWeight: FontWeight.w600,
      ),
      headline5: const TextStyle(
        fontSize: 22.0,
        fontWeight: FontWeight.w600,
        color: ConstColors.offBlack,
      ),
      headline6: const TextStyle(
        color: Colors.black,
        fontSize: 20.0,
        fontWeight: FontWeight.w600,
        letterSpacing: .15,
      ),
      subtitle1: TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.w400,
        color: Colors.black.withOpacity(.5),
        height: 24 / 17,
      ),
      subtitle2: TextStyle(
        color: Colors.black.withOpacity(0.5),
        fontSize: 17.0,
        fontWeight: FontWeight.w400,
        letterSpacing: .15,
        height: 24 / 17,
      ),
      bodyText1: const TextStyle(
        color: Colors.white,
        fontSize: 16.0,
        fontWeight: FontWeight.w400,
        height: 22 / 16,
      ),
    ),
    // accentColor: Colors.orange,
    // hintColor: Colors.white,
    // dividerColor: Colors.white,
    // buttonColor: Colors.white,
    // scaffoldBackgroundColor: Colors.black,
    // canvasColor: Colors.black,
    // inputDecorationTheme: InputDecorationTheme(
    //   border: OutlineInputBorder(
    //     borderRadius: borderRadius,
    //   ),
    //   enabledBorder: OutlineInputBorder(
    //     borderRadius: borderRadius,
    //     borderSide: const BorderSide(
    //       color: ConstColors.primary,
    //     ),
    //   ),
    //   focusedBorder: OutlineInputBorder(
    //     borderRadius: borderRadius,
    //     borderSide: const BorderSide(
    //       color: ConstColors.primary,
    //     ),
    //   ),
    //   errorBorder: OutlineInputBorder(
    //     borderRadius: borderRadius,
    //     borderSide: BorderSide(
    //       width: 2.0,
    //       color: ConstColors.error,
    //     ),
    //   ),
    // ),
  );
}
