// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:color_learning_app/main.dart'; // Adjust the import path as needed

void main() {
  testWidgets('Color Home Screen test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const ColorLearningApp());

    // Verify that the initial state of the app is as expected.
    expect(find.text('Color Learning App'), findsOneWidget);
    expect(find.byType(PageView), findsOneWidget);

    // Verify that the first color is displayed
    expect(find.text('Red'), findsOneWidget);

    // Tap the next button and verify that the color changes
    await tester.tap(find.byIcon(Icons.arrow_forward));
    await tester.pumpAndSettle();
    expect(find.text('Green'), findsOneWidget);
  });
}
