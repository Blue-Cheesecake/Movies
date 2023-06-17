import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../../../config/theme/theme.dart';
import '../logic/logic.dart';

class PageItemWidget extends ConsumerWidget {
  const PageItemWidget({Key? key, required this.title, required this.route}) : super(key: key);

  final String title;
  final String route;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final String currentRoute = ref.watch(currentPageProvider);

    return ListTile(
      title: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15,
          color: route == currentRoute ? Colors.white : DesignSystem.g1,
        ),
      ),
      onTap: () {
        Navigator.of(context).pushNamed(route);
        ref.watch(currentPageProvider.notifier).changeRoute(route);
      },
    );
  }
}
