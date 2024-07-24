import 'package:flutter/material.dart';

ThemeData light = ThemeData(
  listTileTheme: const ListTileThemeData(iconColor: Colors.black),
  colorScheme: ColorScheme.light(
    surface: Colors.grey.shade300,
    primary: Colors.grey.shade500,
    secondary: Colors.grey.shade300,
    tertiary: Colors.white,
    
    inversePrimary: Colors.grey.shade900,
    
  )
);