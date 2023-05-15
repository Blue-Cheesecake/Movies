import 'package:client/core/theme/app_theme.dart';
import 'package:client/views/home_view.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appTheme,
      home: const HomeView(),
    );
  }
}
