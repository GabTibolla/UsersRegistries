import 'package:flutter/material.dart';
import 'package:users_registries/app/core/config/theme_config_app.dart';
import 'package:users_registries/app/views/home_page/home_page.dart';

class UsersRegistriesApp extends StatelessWidget {
  const UsersRegistriesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Users Registries App',
      theme: ThemeConfigApp.themeData,
      home: const HomePage(),
    );
  }
}
