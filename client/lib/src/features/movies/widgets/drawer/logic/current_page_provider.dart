import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../home_view.dart';

final currentPageProvider = StateNotifierProvider<CurrentPageNotifier, String>((ref) {
  return CurrentPageNotifier();
});

class CurrentPageNotifier extends StateNotifier<String> {
  CurrentPageNotifier() : super(HomeView.routeName);

  void changeRoute(String dest) {
    state = dest;
  }
}
