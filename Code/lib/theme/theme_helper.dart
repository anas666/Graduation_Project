import 'dart:ui';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';

/// Helper class for managing themes and colors.
class ThemeHelper {
  // The current app theme
  var _appTheme = PrefUtils().getThemeData();

// A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(27.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: BorderSide(
            width: 2.h,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: colorScheme.primary,
      ),
      dividerTheme: DividerThemeData(
        thickness: 2,
        space: 2,
        color: appTheme.red90002,
      ),
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: colorScheme.primary.withOpacity(0.85),
          fontSize: 16.fSize,
          fontFamily: 'Oooh Baby',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: colorScheme.secondaryContainer,
          fontSize: 15.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: colorScheme.secondaryContainer,
          fontSize: 12.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        displayMedium: TextStyle(
          color: appTheme.gray200,
          fontSize: 40.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
        displaySmall: TextStyle(
          color: colorScheme.primary,
          fontSize: 36.fSize,
          fontFamily: 'Paytone One',
          fontWeight: FontWeight.w400,
        ),
        headlineLarge: TextStyle(
          color: appTheme.gray200,
          fontSize: 32.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
        headlineMedium: TextStyle(
          color: colorScheme.primary,
          fontSize: 26.fSize,
          fontFamily: 'Oxygen',
          fontWeight: FontWeight.w700,
        ),
        headlineSmall: TextStyle(
          color: colorScheme.primary,
          fontSize: 25.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        labelLarge: TextStyle(
          color: appTheme.gray500,
          fontSize: 12.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        titleLarge: TextStyle(
          color: colorScheme.onPrimaryContainer,
          fontSize: 20.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
        titleMedium: TextStyle(
          color: colorScheme.primary,
          fontSize: 18.fSize,
          fontFamily: 'Outfit',
          fontWeight: FontWeight.w700,
        ),
        titleSmall: TextStyle(
          color: colorScheme.primary,
          fontSize: 14.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light(
    // Primary colors
    primary: Color(0XFFFFFFFF),
    primaryContainer: Color(0XFF4D4D4F),
    secondaryContainer: Color(0X91FFFFFF),

    // Error colors
    errorContainer: Color(0XFF9098A3),
    onError: Color(0XFFE5E5E8),
    onErrorContainer: Color(0XFF560900),

    // On colors(text colors)
    onPrimary: Color(0XD3A20900),
    onPrimaryContainer: Color(0XFF01050B),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Amber
  Color get amber40026 => Color(0X26FFBF1A);

  // Black
  Color get black900 => Color(0XFF000000);

  // Blackc
  Color get black9004c => Color(0X4C010E18);

  // Blue
  Color get blue400 => Color(0XFF3993E6);

  // BlueGray
  Color get blueGray400 => Color(0XFF778390);

  // DeepOrange
  Color get deepOrangeA700 => Color(0XFFDE2910);
  Color get deepOrangeA70033 => Color(0X33E71B0E);
  Color get deepOrangeA70066 => Color(0X66E71B0E);

  // DeepOrangeAc
  Color get deepOrangeA7004c => Color(0X4CE71B0E);

  // Gray
  Color get gray100 => Color(0XFFF0F2F5);
  Color get gray200 => Color(0XFFEFEFEF);
  Color get gray20001 => Color(0XFFE7E8EB);
  Color get gray300 => Color(0XFFE5E5E8);
  Color get gray400 => Color(0XFFB3B3B3);
  Color get gray40033 => Color(0X33D0C6AA);
  Color get gray500 => Color(0XFFA3A3A3);
  Color get gray50001 => Color(0XFF9E9FA1);
  Color get gray50002 => Color(0XFFA59E8E);
  Color get gray50003 => Color(0XFFACACAD);
  Color get gray5099 => Color(0X99F9FAFF);
  Color get gray800 => Color(0XFF4D4D4F);
  Color get gray900 => Color(0XFF252526);
  Color get gray90001 => Color(0XFF200909);
  Color get gray90002 => Color(0XFF38201E);
  Color get gray90003 => Color(0XFF470800);
  Color get gray90099 => Color(0X99670D01);

  // GrayCc
  Color get gray100Cc => Color(0XCCF3F2F1);

  // Green
  Color get greenA700 => Color(0XFF1CE230);

  // Lime
  Color get lime900A2 => Color(0XA28D741B);

  // Pink
  Color get pinkA20026 => Color(0X26FF4080);

  // RedD
  Color get red200D1 => Color(0XD1E2A6A6);
  Color get red900D3 => Color(0XD3A20900);

  // Red
  Color get red30033 => Color(0X33D86C68);
  Color get red30066 => Color(0X66D86C68);
  Color get red400 => Color(0XFFE06555);
  Color get red800 => Color(0XFFCF1E25);
  Color get red900 => Color(0XFF7E0E00);
  Color get red90001 => Color(0XFF9A2212);
  Color get red90002 => Color(0XFFA21D1E);
  Color get redA70033 => Color(0X33D50E0E);
  Color get redA70066 => Color(0X66D50E0E);

  // Redc
  Color get red3004c => Color(0X4CD86C68);

  // Redf
  Color get red9003f => Color(0X3F7E0E00);

  // RedAc
  Color get redA7004c => Color(0X4CD50E0E);

  // White
  Color get whiteA700 => Color(0XFFFFFFFF);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();