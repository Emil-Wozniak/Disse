import 'package:disse/configuration/common_constants.dart';
import 'package:disse/navigation/screens_nav.dart';
import 'package:disse/screens/game/game_screen.dart';
import 'package:disse/screens/main/main_screen.dart';
import 'package:disse/screens/splash/splash_screen.dart';
import 'package:disse/utils/color_app.dart';
import 'package:disse/widgets/style/TextStyles.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final BuildContext context;

  const AppBarWidget({
    super.key,
    required this.context,
  });

  @override
  Widget build(BuildContext context) => AppBar(
        leading: const Icon(
          Icons.account_circle_rounded,
          color: Colors.white70,
        ),
        leadingWidth: 100,
        backgroundColor: ColorApp.bgColor,
        title: Center(
            child: Text(
          CommonConstant.appName,
          style: AppTextStyles.islandMomentsTextStyle(
              fontSize: 36.0, fontWeight: FontWeight.w700),
          textAlign: TextAlign.center,
        )),
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
            }),
            color: ColorApp.bgColor,
            icon: const Icon(
              Icons.more_vert_sharp,
              color: Colors.white70,
            ),
          ),
        ],
      );

  List<PopupMenuItem<Screens>> Function(dynamic _) _createItems(
          List<Screens> screens) =>
      (_) => screens.map((e) => _createItem(e)).toList();

  PopupMenuItem<Screens> _createItem(Screens screen) => PopupMenuItem(
        value: screen,
        child: Text(
          screen.name,
          style: AppTextStyles.islandMomentsTextStyle(fontSize: 30.0),
          key: Key(screen.name),
        ),
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
