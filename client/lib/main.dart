import 'package:client/core/router/app_router.dart';
import 'package:client/core/theme/app_theme.dart';
import 'package:client/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// TODO: Refactor provider using riverpod

void main(List<String> args) {
  runApp(
    const ProviderScope(
      child: Main(),
    ),
  );
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomeView.routeName,
      theme: appTheme,
      home: const HomeView(),
      routes: AppRouter.routes,
      debugShowCheckedModeBanner: false,
    );
  }
}
