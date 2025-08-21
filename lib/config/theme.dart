import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ElimTheme {
  // Brand Colors
  static const Color primaryBrown = Color(0xFF4A3B2C);
  static const Color primaryGreen = Color(0xFF2A9D8F);
  static const Color primaryBlue = Color(0xFF264653);
  static const Color accentSand = Color(0xFFE9C46A);
  static const Color accentTerracotta = Color(0xFFE76F51);
  static const Color backgroundGray = Color(0xFFF4F1DE);

  // Program-specific colors
  static const yPrepColor = primaryGreen;
  static const matsDialogueColor = accentTerracotta;
  static const vunjaKalabashColor = primaryBlue;
  static const capacityBuildingColor = primaryBrown;

  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      primaryColor: primaryBlue,
      scaffoldBackgroundColor: backgroundGray,
      colorScheme: ColorScheme.light(
        primary: primaryBlue,
        secondary: primaryGreen,
        tertiary: primaryBrown,
        background: backgroundGray,
        surface: Colors.white,
        error: accentTerracotta,
        onPrimary: Colors.white,
        onSecondary: Colors.white,
        onTertiary: Colors.white,
        onBackground: Colors.black87,
        onSurface: Colors.black87,
        onError: Colors.white,
      ),
      textTheme: TextTheme(
        displayLarge: GoogleFonts.merriweather(
          fontSize: 32,
          fontWeight: FontWeight.bold,
          color: primaryBlue,
        ),
        displayMedium: GoogleFonts.merriweather(
          fontSize: 28,
          fontWeight: FontWeight.bold,
          color: primaryBlue,
        ),
        displaySmall: GoogleFonts.merriweather(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: primaryBlue,
        ),
        bodyLarge: GoogleFonts.sourceSans3(
          fontSize: 18,
          color: Colors.black87,
        ),
        bodyMedium: GoogleFonts.sourceSans3(
          fontSize: 16,
          color: Colors.black87,
        ),
        labelLarge: GoogleFonts.ubuntu(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.5,
        ),
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: primaryGreen,
        textTheme: ButtonTextTheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryGreen,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
      cardTheme: CardThemeData(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        color: Colors.white,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: primaryBlue,
        foregroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
        titleTextStyle: GoogleFonts.merriweather(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}
