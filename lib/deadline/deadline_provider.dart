import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:studybuddy/deadline/deadline_controller.dart';
import 'package:studybuddy/deadline/services/deadline_extra_impl.dart';
import 'package:studybuddy/deadline/deadline_model.dart';
import 'package:studybuddy/deadline/deadline_view.dart';
import 'package:studybuddy/navigation_service/go_router_navigation_service.dart';



part 'deadline_provider.g.dart';

@riverpod
DeadlineController deadlineController(final DeadlineControllerRef ref) => ref.watch(
  deadlineDefaultControllerProvider(
    navigationService: ref.watch(goRouterNavigationServiceProvider),
    deadlineExtra: ref.watch(deadlineExtraProvider),
  ).notifier,
);


@riverpod
DeadlineModel deadlineModel(final DeadlineModelRef ref) => ref.watch(
    deadlineDefaultControllerProvider(
    navigationService: ref.watch(goRouterNavigationServiceProvider),
      deadlineExtra: ref.watch(deadlineExtraProvider),
  ),
);


