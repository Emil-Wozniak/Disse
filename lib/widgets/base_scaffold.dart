import 'package:flutter/material.dart';

import '../utils/color_app.dart';
import 'app_bar_widget.dart';

class BaseScaffold extends StatelessWidget {
  final Widget child;

  const BaseScaffold({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBarWidget(
          context: context,
        ),
        body: Center(
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: ColorApp.gameBackgroundGradient,
            )),
            child: Center(child: child),
          ),
        ),
      );
}
