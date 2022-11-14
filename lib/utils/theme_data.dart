import 'package:country_details/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:riverpod/riverpod.dart';

// THEME PROVIDERS
final theme = Provider((ref) => lightThemeData);
final darkTheme = Provider((ref) => darkThemeData);
final themeMode = StateProvider((ref) => ThemeMode.light);
// this is for light mode..
TextTheme lightTextTheme = TextTheme(
  //  for country name in the detailed screen and some text that uses the same text color
  bodyText1: TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 16.sp,
    height: 1.63.h,
    color: AppColor.greyWarm,
  ),
  //  for country  name in the home screen and some text that uses the same text color

  bodyText2: TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 14.sp,
    height: 1.57.h,
    color: AppColor.greyWarm,
    letterSpacing: -0.3,
  ),
// for country capitals and other text that uses the color
  subtitle1: TextStyle(
    fontWeight: FontWeight.w300,
    fontSize: 16.sp,
    height: 1.56.h,
    color: AppColor.greyWarm,
  ),
  subtitle2: TextStyle(
    fontWeight: FontWeight.w300,
    fontSize: 14.sp,
    height: 1.5.h,
    color: AppColor.greyWarm500,
    letterSpacing: -0.3,
  ),
  // for search bar
  headline6: TextStyle(
    fontWeight: FontWeight.w300,
    fontSize: 16.sp,
    height: 1.54.h,
    color: AppColor.greyWarm500,
    letterSpacing: -0.3,
  ),
  //  for appbar text
  caption: TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 20.sp,
    height: 1.65.h,
    color: AppColor.greyWarm,
  ),
);

// this is for dark text mode..

TextTheme darkTextTheme = TextTheme(
  //  for country name in the detailed screen and some text that uses the same text color
  bodyText1: TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 16.sp,
    height: 1.63.h,
    color: AppColor.greyWarm100,
  ),
  //  for country  name in the home screen and some text that uses the same text color

  bodyText2: TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 14.sp,
    height: 1.57.h,
    color: AppColor.greyWarm100,
    letterSpacing: -0.3,
  ),
// for country capitals in the details screen and other text that uses the color
  subtitle1: TextStyle(
    fontWeight: FontWeight.w300,
    fontSize: 16.sp,
    height: 1.56.h,
    color: AppColor.greyWarm100,
  ),
// for country capitals in the home screen and other text that uses the color

  subtitle2: TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 14.sp,
    height: 1.57.h,
    color: AppColor.greyWarm400,
    letterSpacing: -0.3,
  ),
  // for search bar
  headline6: TextStyle(
    fontWeight: FontWeight.w300,
    fontSize: 16.sp,
    height: 1.54.h,
    color: AppColor.greyWarm200,
    letterSpacing: -0.3,
  ),
  //  for appbar text
  caption: TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 20.sp,
    height: 1.65.h,
    color: AppColor.greyWarm200,
  ),
);

ThemeData lightThemeData = ThemeData(
  textTheme: lightTextTheme..apply(fontSizeFactor: 1.sp),
  focusColor: AppColor.greyWarm100,
  fontFamily: 'Axiforma',
  brightness: Brightness.light,
  scaffoldBackgroundColor: Colors.white,
  iconTheme: IconThemeData(color: AppColor.greyWarm500),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: AppColor.dropdownColor,
      padding: EdgeInsets.only(
        left: 9.w,
        right: 11.w,
        top: 10.h,
        bottom: 10.h,
      ),
      backgroundColor: AppColor.greyWarm25,
    ),
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.white.withOpacity(0.5),
    elevation: 0,
    iconTheme: IconThemeData(color: AppColor.greyWarm),
  ),
  colorScheme: ColorScheme.light(
    secondary: AppColor.greyWarm25,
  ),
);

ThemeData darkThemeData = ThemeData(
  focusColor: AppColor.darkModeSearchBar,
  fontFamily: 'Axiforma',
  textTheme: darkTextTheme..apply(fontSizeFactor: 1.sp),
  brightness: Brightness.dark,
  iconTheme: IconThemeData(color: AppColor.greyWarm),
  scaffoldBackgroundColor: AppColor.darkModeScreenColor,
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: AppColor.dropdownColor,
      padding: EdgeInsets.only(
        left: 9.w,
        right: 11.w,
        top: 10.h,
        bottom: 10.h,
      ),
    ),
  ),
  bottomSheetTheme:
      BottomSheetThemeData(backgroundColor: AppColor.darkModeScreenColor),
  appBarTheme: AppBarTheme(
    backgroundColor: AppColor.darkModeScreenColor,
    elevation: 0,
    iconTheme: IconThemeData(color: AppColor.greyWarm100),
  ),
  colorScheme: ColorScheme.light(
      secondary: AppColor.darkModeSearchBar, brightness: Brightness.dark),
);

// custom classes that will help to change between logos.

extension CustomTheme on ThemeData {
  AssetImage imageForName(String name) {
    final path = brightness == Brightness.dark ? 'images/dark_image' : 'images';
    return AssetImage('$path/$name');
  }
}
