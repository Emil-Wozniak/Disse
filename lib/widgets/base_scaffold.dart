import 'package:flutter/material.dart';

import 'app_bar_widget.dart';

class BaseScaffold extends StatelessWidget {
  final Widget child;

  const BaseScaffold({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBarWidget(
        context: context,
      ),
      body: Container(
        child: child,
      ));
}
