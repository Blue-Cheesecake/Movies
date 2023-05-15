import 'package:client/core/color/app_color.dart';
import 'package:client/providers/current_page_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PageItemWidget extends StatelessWidget {
  const PageItemWidget({Key? key, required this.title, required this.route})
      : super(key: key);

  final String title;
  final String route;

  @override
  Widget build(BuildContext context) {
    CurrentPageProvider currentPageProvider =
        Provider.of<CurrentPageProvider>(context);
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15,
          color: route == currentPageProvider.currentRoute
              ? Colors.white
              : AppColor.lightGrey,
        ),
      ),
      onTap: () {
        Navigator.of(context).pushNamed(route);
        currentPageProvider.changeRoute(route);
      },
    );
  }
}
