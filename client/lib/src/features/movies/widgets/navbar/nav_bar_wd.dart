import 'package:flutter/material.dart';

import '../../../../../../config/theme/theme.dart';

class NavBarWD extends StatelessWidget {
  const NavBarWD({Key? key}) : super(key: key);

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
      backgroundColor: DesignSystem.g0,
    );
  }
}
