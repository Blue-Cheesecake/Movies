import 'package:flutter/material.dart';

import '../../../../../../config/theme/theme.dart';
import '../../home_view.dart';
import '../watch_list/watch_list_view.dart';
import 'widgets/widgets.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: DesignSystem.g0,
      child: ListView(
        children: const [
          PageItemWidget(
            title: "Home",
            route: HomeView.routeName,
          ),
          PageItemWidget(
            title: "Watch List",
            route: WatchListView.routeName,
          ),
        ],
      ),
    );
  }
}
