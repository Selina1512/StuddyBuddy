import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:studybuddy/UI/Deadline_details/deadline_detail_view.dart';
import 'package:studybuddy/UI/Deadline_details/deadline_details_controller.dart';
import 'package:studybuddy/navigation_service/go_router_navigation_service.dart';

part 'deadline_details_provider.g.dart';

/// Provider for DeadlineExtra
@riverpod
DeadlineDetailsController deadlineDetailsController(DeadlineDetailsControllerRef ref) => ref.watch(
  DeadlineDetailsDefaultControllerProvider(
    navigationService: ref.watch(goRouterNavigationServiceProvider),
  ).notifier,
);

