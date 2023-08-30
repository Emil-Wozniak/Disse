import 'dart:core';

import 'package:disse/navigation/Screens.dart';
import 'package:disse/screens/main/main_screen.dart';
import 'package:disse/screens/splash/splash_screen.dart';
import 'package:flutter/widgets.dart';

import '../screens/game/game_screen.dart';

Map<String, WidgetBuilder> routes() => {
      Screens.home.name: (_) =>  const MainScreen(),
      Screens.splash.name: (_) =>  const SplashScreen(),
      Screens.game.name: (_) => const GameScreen(),
    };
