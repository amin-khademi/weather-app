import 'package:flutter/material.dart';

class MyTheme {
  static ThemeData themeData(
      {required bool isDarkTheme, required BuildContext context}) {
    return isDarkTheme
        ? ThemeData(
            scaffoldBackgroundColor: const Color(0xFF343541),
            primarySwatch: Colors.purple,
            primaryColorDark: Colors.deepPurple,
            dividerColor: Colors.white,
            disabledColor: Colors.grey,
            cardColor: const Color(0xFF444654),
            canvasColor: Colors.black,
            brightness: Brightness.dark,
            appBarTheme: const AppBarTheme(
              backgroundColor: Color.fromARGB(255, 37, 38, 42),
            ),
            buttonTheme: Theme.of(context)
                .buttonTheme
                .copyWith(colorScheme: const ColorScheme.dark()))
        : ThemeData(
            scaffoldBackgroundColor: Colors.grey.shade300,
            primarySwatch: Colors.purple,
            primaryColorDark: Colors.deepPurple,
            dividerColor: Colors.black,
            disabledColor: Colors.grey,
            cardColor: Colors.grey[50],
            canvasColor: Colors.grey[50],
            brightness: Brightness.light,
            appBarTheme: const AppBarTheme(
              backgroundColor: Colors.white,
            ),
            buttonTheme: Theme.of(context)
                .buttonTheme
                .copyWith(colorScheme: const ColorScheme.light()));
  }
}

class AppImages {
  static const String _base = "assets/images";
  static const String heavyRain = "$_base/heavyRain.png";
  static const String map = "$_base/map.png";
  static const String moon = "$_base/moon.png";
  static const String nightRain = "$_base/nightRain.png";
  static const String nightStarRain = "$_base/nightStatRain.png";
  static const String nightThunder = "$_base/nightThunder.png";
  static const String rainbow = "$_base/rainbow.png";
  static const String starCLear = "$_base/starCLear.png";
  static const String start = "$_base/start.png";
  static const String sun = "$_base/sun.png";
  static const String sunHeavyRain = "$_base/sunHeavyRain.png";
  static const String sunRaint = "$_base/sunRaint.png";
  static const String sunSlowRain = "$_base/sunSlowRain.png";
  static const String thunder = "$_base/thunder.png";
  static const String umbrella = "$_base/umbrella.png";
  static const String wind = "$_base/wind.png";
  static const String windwave = "$_base/windwave.png";
}

class AppIcons {
  static const String _base = "assets/icons";
  static const String activity = "$_base/activity.svg";
}

class AppModels {
  static const String _base = "assets/models";
  static const String animalCell = "$_base/animal_cell.glb";
  static const String heart = "$_base/heart.glb";
  static const String solarSystem = "$_base/solar_system.glb";
}

class AppGifs {
  static const String _base = "assets/gifs";
  static const String live = "$_base/live.json";
}