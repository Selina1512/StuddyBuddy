import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:studybuddy/commons/nav_bar.dart';

void main() {
  testWidgets('NavBar renders correctly', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: NavBar(onTabChange: (index) {}),
        ),
      ),
    );

    expect(find.byType(GNav), findsOneWidget);
    expect(find.byType(GButton), findsNWidgets(2));
  });
}