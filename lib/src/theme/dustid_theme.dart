import 'package:flutter/material.dart';
import 'dustid_colors.dart';
import 'dustid_text_styles.dart';

class DustidTheme {
  static ThemeData get lightTheme => ThemeData.light().copyWith(
    // background color
    scaffoldBackgroundColor: DustidColors.scaffoldBackground,

    // color system
    colorScheme: const ColorScheme.light(
      primary: DustidColors.primary,
      secondary:DustidColors.functional1,
      tertiary:DustidColors.functional2,
      error:DustidColors.error,
      onPrimary: DustidColors.textPrimary,
      onSecondary: DustidColors.textPrimary,
      onTertiary: DustidColors.textPrimary,
    ),

    // text theme
    textTheme: _buildTextTheme(),

    // componets styles
    elevatedButtonTheme:_buildElevatedButtonTheme(),
    outlinedButtonTheme:_buildOutlineButtonTheme(),
    inputDecorationTheme:_buildInputTheme(),
    cardTheme:_buildCardTheme(),
    dividerTheme:_buildDividerTheme(),
  );

// text theme configuration
static TextTheme _buildTextTheme() {
  return const TextTheme(
    headlineLarge: DustidTextStyles.headline,
    bodyLarge: DustidTextStyles.bodyPrimary,
  );
}

// main button styles
static ElevatedButtonThemeData _buildElevatedButtonTheme() {
  return ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: DustidColors.primary,
      foregroundColor: DustidColors.textPrimary,
      padding: const EdgeInsets.symmetric(horizontal:24, vertical:12),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      textStyle: DustidTextStyles.buttonPrimary,
    ),
  ); 
}

// Border button style (use functional color 2)
static OutlinedButtonThemeData _buildOutlineButtonTheme() {
  return OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      side: const BorderSide(color: DustidColors.functional2, width: 2),
      foregroundColor: DustidColors.textPrimary,
      padding: const EdgeInsets.symmetric(horizontal:20, vertical:10),
      // shape: RoundedRectangleBorder(
      //   borderRadius: BorderRadius.circular(8),
      // ),
      textStyle: DustidTextStyles.buttonSecondary,
    ),
  );
}

// Input box style
static InputDecorationTheme _buildInputTheme() {
    return InputDecorationTheme(
      filled: true,
      fillColor: Colors.white,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: DustidColors.divider),
      ),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: DustidColors.functional1, width: 1.5),
      ),
      errorBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: DustidColors.error, width: 1.5),
      ),
    );
  }

// card style
static CardTheme _buildCardTheme() {
  return CardTheme(
    color: Colors.white,
    elevation: 2,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: const BorderSide(color: DustidColors.divider, width: 1),
      ),
  );
}

// divider style
static DividerThemeData _buildDividerTheme() {
  return const DividerThemeData(
    color: DustidColors.divider,
    thickness: 1,
    space:24,
  );
}


}