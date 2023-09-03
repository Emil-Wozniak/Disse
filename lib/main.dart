import 'package:disse/navigation/routes.dart';
import 'package:flutter/material.dart';

import 'navigation/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static final navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) => MaterialApp(
        theme: ThemeData(),
        navigatorKey: MyApp.navigatorKey,
        initialRoute: Screens.home.name,
        routes: routes(),
      );
}
