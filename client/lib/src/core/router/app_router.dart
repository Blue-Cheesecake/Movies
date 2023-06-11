import 'package:flutter/material.dart';

import '../../features/movies/page/page.dart';
import '../../features/movies/page/widgets/watch_list/page/page.dart';

class AppRouter {
  AppRouter._();

  static final Map<String, Widget Function(BuildContext)> routes = {
    HomeView.routeName: (p0) => const HomeView(),
    WatchListView.routeName: (p0) => const WatchListView(),
  };
}
