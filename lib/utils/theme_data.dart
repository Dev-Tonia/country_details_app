import 'package:country_details/utils/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static TextTheme lightTextTheme = TextTheme(
    //  for country name in the detailed screen and some text that uses the same text color
    bodyText1: TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 16,
      height: 1.63,
      color: AppColor.greyWarm,
    ),
    //  for country  name in the home screen and some text that uses the same text color

    bodyText2: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 14,
      height: 1.57,
      color: AppColor.greyWarm,
      letterSpacing: -0.3,
    ),
// for country capitals and other text that uses the color
    subtitle1: TextStyle(
      fontWeight: FontWeight.w300,
      fontSize: 16,
      height: 1.56,
      color: AppColor.greyWarm,
    ),
    subtitle2: TextStyle(
      fontWeight: FontWeight.w300,
      fontSize: 14,
      height: 1.57,
      color: AppColor.greyWarm500,
      letterSpacing: -0.3,
    ),
    // for search bar
    headline6: TextStyle(
      fontWeight: FontWeight.w300,
      fontSize: 16,
      height: 1.54,
      color: AppColor.greyWarm500,
      letterSpacing: -0.3,
    ),
    //  for appbar text
    caption: TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 20,
      height: 1.65,
      color: AppColor.greyWarm,
    ),
  );

  static TextTheme darkTextTheme = TextTheme(
    //  for country name in the detailed screen and some text that uses the same text color
    bodyText1: TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 16,
      height: 1.63,
      color: AppColor.greyWarm100,
    ),
    //  for country  name in the home screen and some text that uses the same text color

    bodyText2: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 14,
      height: 1.57,
      color: AppColor.greyWarm100,
      letterSpacing: -0.3,
    ),
// for country capitals in the details screen and other text that uses the color
    subtitle1: TextStyle(
      fontWeight: FontWeight.w300,
      fontSize: 16,
      height: 1.56,
      color: AppColor.greyWarm100,
    ),
// for country capitals in the home screen and other text that uses the color

    subtitle2: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 14,
      height: 1.57,
      color: AppColor.greyWarm400,
      letterSpacing: -0.3,
    ),
    // for search bar
    headline6: TextStyle(
      fontWeight: FontWeight.w300,
      fontSize: 16,
      height: 1.54,
      color: AppColor.greyWarm200,
      letterSpacing: -0.3,
    ),
    //  for appbar text
    caption: TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 20,
      height: 1.65,
      color: AppColor.greyWarm200,
    ),
  );

  static ThemeData lightThemeData() {
    return ThemeData(
      textTheme: AppTheme.lightTextTheme,
      fontFamily: 'Axiforma',
      brightness: Brightness.light,
      scaffoldBackgroundColor: Colors.white,
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColor.dropdownColor,
          padding: const EdgeInsets.only(
            left: 16,
            right: 11,
            top: 10,
            bottom: 10,
          ),
          backgroundColor: AppColor.greyWarm25,
        ),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: AppColor.greyWarm),
        centerTitle: true,
      ),
    );
  }

  static ThemeData darkThemeData() {
    return ThemeData(
      fontFamily: 'Axiforma',
      textTheme: AppTheme.darkTextTheme,
      brightness: Brightness.dark,
      scaffoldBackgroundColor: AppColor.darkModeScreenColor,
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColor.dropdownColor,
          padding: const EdgeInsets.only(
            left: 16,
            right: 11,
            top: 10,
            bottom: 10,
          ),
        ),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: AppColor.darkModeScreenColor,
        elevation: 0,
        iconTheme: IconThemeData(color: AppColor.greyWarm100),
        centerTitle: true,
      ),
    );
  }
}
