import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:studybuddy/go_router.dart';
import 'package:studybuddy/navigation_service/navigation_service_aggregator.dart';

part 'go_router_navigation_service.g.dart';

///Provider for GoRouterNavigationService
@riverpod
NavigationServiceAggregator goRouterNavigationService(
    final GoRouterNavigationServiceRef ref,
    ) =>
    GoRouterNavigationService(goRouter: ref.watch(goRouterProvider));

///Implementation of NavigationServiceAggregator
class GoRouterNavigationService implements NavigationServiceAggregator {

  ///Constructor for GoRouterNavigationService
  GoRouterNavigationService({
    required final GoRouter goRouter,
  }) : _goRouter = goRouter;
  final GoRouter _goRouter;

  @override
  void pop<T>({final T? data}) => _goRouter.pop(data);

}
