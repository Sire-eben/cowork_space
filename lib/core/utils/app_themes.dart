import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';

class AppTheme {
  AppTheme._();

  static ThemeData _baseTheme(BuildContext context) => FlexThemeData.light(
    useMaterial3ErrorColors: true,
    colors: const FlexSchemeColor(
      primary: Color(0xff126022),
      primaryContainer: Color(0xffd0e4ff),
      secondary: Color(0xff111827),
      secondaryContainer: Color(0xffffdbcf),
      tertiary: Color(0xff126022),
      tertiaryContainer: Color(0xff95f0ff),
      appBarColor: Color(0xffffdbcf),
      error: Color(0xffb00020),
    ),
    appBarBackground: const Color(0xFFFFFFFF),
    scaffoldBackground: const Color(0xFFFFFFFF),
    usedColors: 2,
    surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
    blendLevel: 7,
    subThemesData: const FlexSubThemesData(
      appBarCenterTitle: true,
      appBarIconSchemeColor: SchemeColor.black,
      appBarActionsIconSchemeColor: SchemeColor.black,
      appBarBackgroundSchemeColor: SchemeColor.onPrimary,
      appBarForegroundSchemeColor: SchemeColor.onPrimary,
      blendOnLevel: 10,
      blendOnColors: false,
      blendTextTheme: true,
      useTextTheme: true,
      useM2StyleDividerInM3: true,
      bottomSheetBackgroundColor: SchemeColor.onPrimary,
      bottomSheetModalBackgroundColor: SchemeColor.onPrimary,
      inputDecoratorRadius: 8,
      inputDecoratorFocusedBorderWidth: 1,
      inputDecoratorIsFilled: false,
      inputDecoratorUnfocusedBorderIsColored: false,
      dialogBackgroundSchemeColor: SchemeColor.onPrimary,
      elevatedButtonRadius: 8,
      textButtonRadius: 8,
      navigationBarIndicatorSchemeColor: SchemeColor.onPrimary,
      navigationBarElevation: 15,
      navigationBarLabelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
    ),
    visualDensity: FlexColorScheme.comfortablePlatformDensity,
    useMaterial3: true,
    swapLegacyOnMaterial3: true,
    fontFamily: GoogleFonts.raleway().fontFamily,
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(), // enables swipe
      },
    ),
  );

  static ThemeData defaultTheme(BuildContext context) =>
      _baseTheme(context).copyWith(brightness: Brightness.light);
}

class Fonts {
  static const primary = "bebasNeue";
}

class Insets {
  /// 4
  static const double xs = 4;

  /// 8
  static const double sm = 8;

  /// 16 const
  static const double md = 16;

  ///20
  static const double l = 20;

  /// 24 const
  static const double lg = 24;

  /// 32 const
  static const double xl = 36;

  /// 64 const
  static const double bottomOffset = 64;
}

class Shadows {
  static const bool enabled = true;

  static double get mRadius => 8;

  static List<BoxShadow> m(Color color, [double? opacity = 0]) {
    return [
      BoxShadow(
        color: color.withOpacity(opacity ?? .03),
        blurRadius: mRadius,
        spreadRadius: mRadius / 2,
        offset: const Offset(1, 0),
      ),
      BoxShadow(
        color: color.withOpacity(opacity ?? .04),
        blurRadius: mRadius / 2,
        spreadRadius: mRadius / 4,
        offset: const Offset(1, 0),
      ),
    ];
  }

  static List<BoxShadow> get universal => [
    BoxShadow(
      offset: Offset(0, 4),
      blurRadius: 4,
      spreadRadius: 0,
      color: Colors.black.withOpacity(0.03),
    ),
  ];

  static List<BoxShadow> get small => [
    BoxShadow(
      color: const Color(0xff333333).withOpacity(.15),
      spreadRadius: 0,
      blurRadius: 3,
      offset: const Offset(0, 1),
    ),
  ];
}

class FontSizes {
  static double xs = 9;
  static double sm = 13;
  static double md = 15;
  static double lg = 18;
}

class IconSizes {
  static const double xs = 8;
  static const double sm = 16;
  static const double md = 24;
  static const double lg = 32;
}
