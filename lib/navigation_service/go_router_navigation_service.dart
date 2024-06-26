import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:studybuddy/navigation_service/NavigationServiceAggregator.dart';
import 'package:studybuddy/go_router.dart';

part 'go_router_navigation_service.g.dart';

@riverpod
NavigationServiceAggregator goRouterNavigationService(
    final GoRouterNavigationServiceRef ref,
    ) =>
    GoRouterNavigationService(goRouter: ref.watch(goRouterProvider));

class GoRouterNavigationService implements NavigationServiceAggregator {
  final GoRouter _goRouter;

  GoRouterNavigationService({
    required final GoRouter goRouter,
  }) : _goRouter = goRouter;

  @override
  void pop<T>({final T? data}) => _goRouter.pop(data);

}

