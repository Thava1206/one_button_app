// Basic widget tests for One Button App.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:one_button_app/main.dart';

void main() {
  testWidgets('Renders a single button', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.byType(ElevatedButton), findsOneWidget);
    expect(find.text('Click Me'), findsOneWidget);
  });

  testWidgets('Tapping the button does not throw', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    await tester.tap(find.byType(ElevatedButton));
    await tester.pump();

    expect(tester.takeException(), isNull);
    expect(find.text('Click Me'), findsOneWidget);
  });
}
