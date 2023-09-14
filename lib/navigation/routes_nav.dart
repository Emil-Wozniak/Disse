import 'package:flutter/widgets.dart';

import '../screens/game/game_screen.dart';
import '../screens/main/main_screen.dart';

import '../screens/splash/splash_screen.dart';
import 'screens_nav.dart';

Map<String, WidgetBuilder> routes() => {
      Screens.home.name: (_) => const MainScreen(),
      Screens.splash.name: (_) => const SplashScreen(),
      Screens.game.name: (_) => const GameScreen(),
    };
