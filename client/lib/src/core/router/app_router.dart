import 'package:flutter/material.dart';

import '../../features/movies/home_view.dart';
import '../../features/movies/widgets/watch_list/watch_list_view.dart';

class AppRouter {
  AppRouter._();

  static final Map<String, Widget Function(BuildContext)> routes = {
    HomeView.routeName: (p0) => const HomeView(),
    WatchListView.routeName: (p0) => const WatchListView(),
  };
}
