import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:studybuddy/UI/deadline/widget/background_widget.dart';

void main() {
  testWidgets('GradientBackground applies gradient to child', (WidgetTester tester) async {
    // Define a key to identify the child widget
    const childKey = Key('child');

    // Build the GradientBackground widget
    await tester.pumpWidget(
      const MaterialApp(
        home: GradientBackground(
          child: SizedBox(key: childKey, width: 100, height: 100),
        ),
      ),
    );

    // Verify if the GradientBackground widget is present
    final gradientBackgroundFinder = find.byType(GradientBackground);
    expect(gradientBackgroundFinder, findsOneWidget);

    // Verify if the child widget is present
    final childFinder = find.byKey(childKey);
    expect(childFinder, findsOneWidget);

    // Verify if the gradient is applied
    final decoratedBoxFinder = find.descendant(
      of: gradientBackgroundFinder,
      matching: find.byType(DecoratedBox),
    );
    expect(decoratedBoxFinder, findsOneWidget);

    final decoratedBox = tester.widget<DecoratedBox>(decoratedBoxFinder);
    final decoration = decoratedBox.decoration as BoxDecoration;
    final gradient = decoration.gradient as LinearGradient;

    expect(gradient.colors, [
      const Color.fromRGBO(203, 199, 216, 1),
      const Color.fromRGBO(112, 177, 196, 1),
    ]);
  });
}