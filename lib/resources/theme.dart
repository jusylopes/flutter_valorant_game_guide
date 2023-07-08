import 'package:flutter/material.dart';
import 'package:flutter_valorant_game_guide/resources/colors.dart';
import 'package:flutter_valorant_game_guide/resources/strings.dart';

class ValorantTheme {
  static ThemeData get dark => ThemeData(
        fontFamily: ValorantStrings.rubikFont,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: ValorantColors.primaryColor,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          elevation: 0,
        ),
        textTheme: TextTheme(
          titleLarge: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
            letterSpacing: 2.0,
            color: Colors.white,
          ),
          titleMedium: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 14,
            // letterSpacing: 3.0,
            color: Colors.white,
          ),
          bodyLarge: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 12,
            letterSpacing: 1.0,
            color: Colors.grey,
            fontFamily: ValorantStrings.productSansFont,
          ),
          bodyMedium: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 12,
            letterSpacing: 2.0,
            height: 1.5,
            color: Colors.white,
            fontFamily: ValorantStrings.productSansFont,
          ),
          labelMedium: const TextStyle(
            fontSize: 22,
            letterSpacing: 2.0,
            color: Colors.white,
          ),
          labelLarge: TextStyle(
              letterSpacing: 2.0,
              fontSize: 33,
              color: Colors.white.withOpacity(0.7)),
          labelSmall: TextStyle(
            fontSize: 12,
            color: Colors.white,
            fontFamily: ValorantStrings.productSansFont,
          ),
        ),
      );
}
