import 'package:client/widgets/drawer_widget.dart';
import 'package:client/widgets/nav_bar_widget.dart';
import 'package:flutter/material.dart';

class WatchListView extends StatelessWidget {
  const WatchListView({Key? key}) : super(key: key);
  static const String routeName = "/watch-list";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      drawer: DrawerWidget(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: NavBarWidget(),
      ),
    );
  }
}
