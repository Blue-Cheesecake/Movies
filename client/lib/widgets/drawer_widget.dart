import 'package:client/core/color/app_color.dart';
import 'package:client/views/home_view.dart';
import 'package:client/views/watch_list_view.dart';
import 'package:client/widgets/page_item_widget.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColor.darkGrey,
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
