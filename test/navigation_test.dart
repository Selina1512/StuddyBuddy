// ignore_for_file: inference_failure_on_function_invocation

import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:mockito/mockito.dart';
import 'package:studybuddy/navigation_service/go_router_navigation_service.dart';

class MockGoRouter extends Mock implements GoRouter {}

void main() {
  group('GoRouterNavigationService', () {
    late MockGoRouter mockGoRouter;
    late GoRouterNavigationService goRouterNavigationService;

    setUp(() {
      mockGoRouter = MockGoRouter();
      goRouterNavigationService = GoRouterNavigationService(goRouter: mockGoRouter);
    });

    test('pop should call goRouter.pop with correct data', () {
      const data = 'testData';

      goRouterNavigationService.pop(data: data);

      verify(mockGoRouter.pop(data)).called(1);
    });

    test('pop should call goRouter.pop with null data', () {
      goRouterNavigationService.pop();

      verify(mockGoRouter.pop(null)).called(1);
    });
  });
}