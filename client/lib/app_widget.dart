import 'package:flutter/material.dart';

import 'config/theme/theme.dart';
import 'src/core/router/router.dart';
import 'src/features/movies/home_view.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomeView.routeName,
      theme: appTheme(),
      home: const HomeView(),
      routes: AppRouter.routes,
      debugShowCheckedModeBanner: false,
    );
  }
}
