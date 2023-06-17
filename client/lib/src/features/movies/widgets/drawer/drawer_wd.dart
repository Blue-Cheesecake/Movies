import 'package:flutter/material.dart';

import '../../../../../../config/theme/theme.dart';
import '../../home_view.dart';
import '../watch_list/watch_list_wd.dart';
import 'widgets/widgets.dart';

class DrawerWD extends StatelessWidget {
  const DrawerWD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: DesignSystem.g0,
      child: ListView(
        children: const [
          PageItemWD(
            title: "Home",
            route: HomeView.routeName,
          ),
          PageItemWD(
            title: "Watch List",
            route: WatchListWD.routeName,
          ),
        ],
      ),
    );
  }
}
