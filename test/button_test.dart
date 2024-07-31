// File: test/buttons_test.dart
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:studybuddy/UI/deadline/widget/buttons_design.dart';

void main() {
  testWidgets('Buttons widget test', (WidgetTester tester) async {
    const buttonKey = Key('button');

    bool buttonPressed = false;

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Buttons(
            key: buttonKey,
            text: 'Test Button',
            onPressed: () {
              buttonPressed = true;
            },
            w: 200,
          ),
        ),
      ),
    );

    final buttonFinder = find.byKey(buttonKey);
    expect(buttonFinder, findsOneWidget);

    expect(find.text('Test Button'), findsOneWidget);

    final sizedBox = tester.widget<SizedBox>(find.byType(SizedBox));
    expect(sizedBox.width, 200);

    final materialButton = tester.widget<MaterialButton>(find.byType(MaterialButton));
    final shape = materialButton.shape as RoundedRectangleBorder;
    expect(shape.borderRadius, BorderRadius.circular(15));
    expect(shape.side.width, 2);

    await tester.tap(buttonFinder);
    await tester.pump();
    expect(buttonPressed, isTrue);
  });
}