import 'package:flutter/material.dart';

import '../../widgets/base_scaffold.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const BaseScaffold(
        child: Text(
          "Main",
          style: TextStyle(color: Colors.white70, fontSize: 48),
        ),
      );
}
