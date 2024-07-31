import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:studybuddy/UI/deadline/deadline_controller.dart';
import 'package:studybuddy/UI/deadline/deadline_view.dart';
import 'package:studybuddy/navigation_service/go_router_navigation_service.dart';

part 'deadline_provider.g.dart';

/// Provider for DeadlineExtra
@riverpod
DeadlineController deadlineController(DeadlineControllerRef ref) => ref.watch(
  deadlineDefaultControllerProvider(
    navigationService: ref.watch(goRouterNavigationServiceProvider),
  ).notifier,
);

