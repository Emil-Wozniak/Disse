import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:disse/main.dart';

void main() {
  testWidgets('Change screen', (WidgetTester tester) async {
    given: // App
    await tester.pumpWidget(const MyApp());
    expect(find.text('Main'), findsOneWidget);
    var popup = find.byIcon(Icons.more_vert_sharp);

    expect: // popup is present
    expect(popup, findsOneWidget);

    when: // popup icon is tapped
    await tester.tap(popup);
    await tester.pumpAndSettle();

    then: // Home button is present
    var homeButton = find.text('home');
    expect(homeButton, findsOneWidget);

    and: // Splash button is present
    var splashButton = find.text('splash');
    expect(splashButton, findsOneWidget);

    and: // Game button is present
    var gameButton = find.text('game');
    expect(gameButton, findsOneWidget);
  });
}
