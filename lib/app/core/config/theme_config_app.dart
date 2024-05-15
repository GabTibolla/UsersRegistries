import 'package:flutter/material.dart';

class ThemeConfigApp {
  static ThemeData get themeData => ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.grey,
          primary: Colors.blue[500],
          secondary: Colors.black,
          tertiary: Colors.orange[500],
        ),
        useMaterial3: true,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue[900],
          elevation: 7,
          actionsIconTheme: const IconThemeData(
            color: Colors.white,
            size: 30,
          ),
          titleTextStyle: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          shadowColor: Colors.black,
          shape: ShapeBorder.lerp(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            0.4,
          ),
        ),
        drawerTheme: DrawerThemeData(
          backgroundColor: Colors.blue[900],
          elevation: 10,
        ),
        shadowColor: Colors.black,
      );
}
