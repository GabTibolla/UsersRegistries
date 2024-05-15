import 'package:flutter/material.dart';
import 'package:users_registries/app/core/ui/widgets/appbar_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const AppbarWidget(title: "Lista"),
        body: Container(),
      ),
    );
  }
}
