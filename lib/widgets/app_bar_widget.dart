import 'package:flutter/material.dart';

import '../configuration/common_constants.dart';
import '../navigation/screens.dart';
import '../screens/game/game_screen.dart';
import '../screens/main/main_screen.dart';
import '../screens/splash/splash_screen.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final BuildContext context;

  const AppBarWidget({
    super.key,
    required this.context,
  });

  @override
  Widget build(BuildContext context) => AppBar(
        leading: const Icon(Icons.account_circle_rounded),
        leadingWidth: 100,
        backgroundColor: Colors.black45,
        title: const Text(CommonConstant.appName),
        actions: [
          PopupMenuButton(
              itemBuilder: _createItems([
                Screens.home,
                Screens.splash,
                Screens.game,
              ]),
              onSelected: _onSelectNavigate({
                Screens.home: const MainScreen(),
                Screens.splash: const SplashScreen(),
                Screens.game: const GameScreen(),
              })),
        ],
      );

  List<PopupMenuItem<Screens>> Function(dynamic _) _createItems(
          List<Screens> screens) =>
      (_) => screens.map((e) => _createItem(e)).toList();

  PopupMenuItem<Screens> _createItem(Screens screen) => PopupMenuItem(
        value: screen,
        child: Text(screen.name),
      );

  PopupMenuItemSelected<Screens> _onSelectNavigate(
          Map<Screens, Widget> navigationScreens) =>
      (path) {
        navigationScreens.forEach((screenPath, screenWidget) {
          if (screenPath == path) {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (_) => screenWidget),
            );
          }
        });
      };

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
