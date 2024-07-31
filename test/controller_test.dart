// test/controller_test.dart
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:studybuddy/UI/createdeadline/create_deadline_provider.dart';
import 'package:studybuddy/UI/createdeadline/create_deadline_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:studybuddy/UI/createdeadline/create_deadline_view.dart';

class MockCreateDeadlineController extends Mock implements CreateDeadlineController {}
class MockGoRouter extends Mock implements GoRouter {}

void main() {
  group('CreateDeadline Widget', () {
    late MockCreateDeadlineController mockController;

    setUp(() {
      mockController = MockCreateDeadlineController();
    });

    testWidgets('should display task description input', (WidgetTester tester) async {
      await tester.pumpWidget(
        ProviderScope(
          overrides: [
            createDeadlineControllerProvider.overrideWithValue(mockController),
          ],
          child: MaterialApp(
            home: CreateDeadline(),
          ),
        ),
      );

      expect(find.byType(TextField), findsNWidgets(2));
      expect(find.text('Aufgabe'), findsOneWidget);
    });
  });
}