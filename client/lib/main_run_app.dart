import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app_widget.dart';

void mainRunApp() {
  runApp(
    const ProviderScope(
      child: AppWidget(),
    ),
  );
}
