import 'package:client/views/home_view.dart';
import 'package:client/views/watch_list_view.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static final Map<String, Widget Function(BuildContext)> routes = {
    HomeView.routeName: (p0) => const HomeView(),
    WatchListView.routeName: (p0) => const WatchListView(),
  };
}
