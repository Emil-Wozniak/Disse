import 'package:flutter/material.dart';

import '../../widgets/base_scaffold.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      const BaseScaffold(child: Text("Splash"));
}
