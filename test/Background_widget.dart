import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:studybuddy/UI/deadline/widget/background_widget.dart';

void main() {
  testWidgets('GradientBackground widget test', (WidgetTester tester) async {
    // Define a test key
    const testKey = Key('testKey');

    // Build the GradientBackground widget
    await tester.pumpWidget(
      MaterialApp(
        home: GradientBackground(
          key: testKey,
          child: const Text('Test Child'),
        ),
      ),
    );

    // Verify if GradientBackground is present in the widget tree
    expect(find.byKey(testKey), findsOneWidget);

    // Verify if the child widget is present in the widget tree
    expect(find.text('Test Child'), findsOneWidget);

    // Verify if the gradient is applied correctly
    final decoratedBox = tester.widget<DecoratedBox>(find.byType(DecoratedBox));
    final boxDecoration = decoratedBox.decoration as BoxDecoration;
    final gradient = boxDecoration.gradient as LinearGradient;

    expect(gradient.colors, [
      const Color.fromRGBO(203, 199, 216, 1),
      const Color.fromRGBO(112, 177, 196, 1),
    ]);
    expect(gradient.begin, Alignment.topCenter);
    expect(gradient.end, Alignment.bottomCenter);
  });
}