import 'package:client/core/color/app_color.dart';
import 'package:flutter/material.dart';

class NavBarWidget extends StatelessWidget {
  const NavBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
        icon: const Icon(
          Icons.menu,
          color: Colors.white,
        ),
      ),
      backgroundColor: AppColor.darkGrey,
    );
  }
}
