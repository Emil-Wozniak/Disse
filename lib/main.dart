import 'package:disse/navigation/routes_nav.dart';
import 'package:disse/utils/color_app.dart';

import 'package:flutter/material.dart';

import 'navigation/screens_nav.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static final navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) => MaterialApp(
        theme: ColorApp.light,
        darkTheme: ColorApp.dark,
        navigatorKey: MyApp.navigatorKey,
        initialRoute: Screens.home.name,
        routes: routes(),
      );
}
