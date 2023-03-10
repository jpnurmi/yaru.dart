import 'package:flutter/material.dart';
import 'package:yaru/src/themes/common_themes.dart';
import 'package:yaru_colors/yaru_colors.dart';

final yaruHighContrastLight = createYaruTheme(
  colorScheme: const ColorScheme.highContrastLight(
    primary: Colors.black,
    secondary: Colors.black,
    onSecondary: Colors.white,
    error: YaruColors.error,
  ),
);

final yaruHighContrastDark = createYaruTheme(
  colorScheme: const ColorScheme.highContrastDark(
    primary: Colors.white,
    secondary: Colors.white,
    onSecondary: Colors.black,
    error: YaruColors.error,
  ),
  elevatedButtonTextColor: Colors.black,
);
