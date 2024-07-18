import 'package:flutflix_tutorial/core/my_colors.dart';
import 'package:flutter/material.dart';

final myThemeData = ThemeData.dark().copyWith(
  scaffoldBackgroundColor: MyColors.scaffoldBackground,
  appBarTheme: const AppBarTheme(
    backgroundColor: MyColors.scaffoldBackground,
  ),
);
