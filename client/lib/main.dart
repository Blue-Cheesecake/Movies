import 'package:client/core/router/app_router.dart';
import 'package:client/core/theme/app_theme.dart';
import 'package:client/providers/current_page_provider.dart';
import 'package:client/providers/watch_list_provider.dart';
import 'package:client/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// TODO: Refactor service using retrofit
// TODO: Refactor provider using riverpod

void main(List<String> args) {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => CurrentPageProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => WatchListProvider(),
        ),
      ],
      child: MaterialApp(
        initialRoute: HomeView.routeName,
        theme: appTheme,
        home: const HomeView(),
        routes: AppRouter.routes,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
