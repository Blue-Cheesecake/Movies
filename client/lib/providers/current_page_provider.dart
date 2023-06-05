import 'package:client/views/home_view.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final currentPageProvider =
    StateNotifierProvider<CurrentPageNotifier, String>((ref) {
  return CurrentPageNotifier();
});

class CurrentPageNotifier extends StateNotifier<String> {
  CurrentPageNotifier() : super(HomeView.routeName);

  void changeRoute(String dest) {
    state = dest;
  }
}
