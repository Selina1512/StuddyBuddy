import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:studybuddy/UI/createdeadline/create_deadline_controller.dart';
import 'package:studybuddy/UI/createdeadline/create_deadline_model.dart';
import 'package:studybuddy/UI/createdeadline/create_deadline_view.dart';
import 'package:studybuddy/navigation_service/go_router_navigation_service.dart';

part 'create_deadline_provider.g.dart';

@riverpod
CreateDeadlineController createDeadlineController(
    CreateDeadlineControllerRef ref,) => ref.watch(
  createDeadlineDefaultControllerProvider(
    navigationService: ref.watch(goRouterNavigationServiceProvider),
  ).notifier,
);

@riverpod
CreateDeadlineModel createDeadlineModel(CreateDeadlineModelRef ref)
=> ref.watch(
    createDeadlineDefaultControllerProvider(
    navigationService: ref.watch(goRouterNavigationServiceProvider),
    ) as ProviderListenable<CreateDeadlineModel>,
);
