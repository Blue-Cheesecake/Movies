import 'package:client/views/home_view.dart';
import 'package:flutter/material.dart';

class CurrentPageProvider extends ChangeNotifier {
  String _currentRoute = HomeView.routeName;

  String get currentRoute => _currentRoute;

  void changeRoute(String dest) {
    _currentRoute = dest;
    notifyListeners();
  }
}
