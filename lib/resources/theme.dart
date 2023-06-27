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
          backgroundColor: ValorantColors.primaryColor,
          centerTitle: true,
          toolbarHeight: 100,
          elevation: 0,
          titleTextStyle: TextStyle(fontSize: 28.0)),
      tabBarTheme: const TabBarTheme(
        labelColor: ValorantColors.secondaryColor,
        unselectedLabelColor: Colors.grey,
      ));
}
