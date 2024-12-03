import 'package:final_assignment/app/constants/theme_constant.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static ThemeData getApplicationTheme(bool isDark) {
    return ThemeData(
      // Change the theme according to the user preference
      colorScheme: isDark
          ? const ColorScheme.dark(
              primary: Color.fromARGB(255, 255, 255, 255),
            )
          : const ColorScheme.light(
              primary: Color.fromARGB(255, 38, 38, 38),
            ),
      brightness: isDark ? Brightness.dark : Brightness.light,
      fontFamily: 'Poppins',
      useMaterial3: true,

      // Change app bar color
      appBarTheme: const AppBarTheme(
        elevation: 0,
        backgroundColor: ThemeConstant.appBarColor,
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),

      // Change elevated button theme
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          foregroundColor: Colors.white,
          backgroundColor: ThemeConstant.primaryColor,
          textStyle: const TextStyle(
            fontSize: 20,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.symmetric(
            vertical: 16,
            horizontal: 24,
          ),
        ),
      ),

      // Change text field theme
      inputDecorationTheme: const InputDecorationTheme(
        contentPadding: EdgeInsets.all(15),
        border: OutlineInputBorder(),
        labelStyle: TextStyle(
          fontSize: 20,
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: ThemeConstant.primaryColor,
          ),
        ),
      ),

      // Circular progress bar theme
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: ThemeConstant.primaryColor,
      ),

      // Bottom navigation bar theme
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Color.fromARGB(255, 38, 38, 38),
        selectedItemColor: Color.fromARGB(255, 189, 54, 54),
        unselectedItemColor: Color.fromARGB(255, 255, 255, 255),
        type: BottomNavigationBarType.fixed,
        elevation: 0,
      ),
    );
  }
}
