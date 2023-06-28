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
          toolbarHeight: 120,
          elevation: 0,
          titleTextStyle: TextStyle(fontSize: 28.0)),
      tabBarTheme: TabBarTheme(
        labelStyle: TextStyle(
            fontSize: 18.0, fontFamily: ValorantStrings.productSansFont),
        indicator: const UnderlineTabIndicator(
          borderSide:
              BorderSide(width: 3.0, color: ValorantColors.secondaryColor),
          insets: EdgeInsets.symmetric(horizontal: 50.0),
        ),
        unselectedLabelColor: Colors.grey,
        labelColor: ValorantColors.secondaryColor,
      ));
}
