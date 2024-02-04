import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:disse/screens/splash/splash_screen.dart';
import 'package:disse/main.dart';

void main() {
  testWidgets('Change screen', (WidgetTester tester) async {
    given:
    await tester.pumpWidget(const MyApp());
    expect(find.text('Main'), findsOneWidget);

    when:
    await tester.tap(find.byIcon(Icons.more_vert_sharp));
    await tester.pumpAndSettle();

    and:
    var splashButton = find.text('splash');
    await tester.tap(splashButton);
    await tester.pump();

    then:
    expect(splashButton, findsOneWidget);
    expect(find.byType(SplashScreen), findsOneWidget);
  });
}
