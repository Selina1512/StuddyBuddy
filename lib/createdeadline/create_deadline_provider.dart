import 'package:riverpod/src/framework.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:studybuddy/createdeadline/create_deadline_controller.dart';
import 'package:studybuddy/createdeadline/create_deadline_model.dart';
import 'package:studybuddy/createdeadline/create_deadline_view.dart';
import 'package:studybuddy/navigation_service/go_router_navigation_service.dart';

part 'create_deadline_provider.g.dart';

@riverpod
/// CreateDeadlineController
CreateDeadlineController createDeadlineController(
    CreateDeadlineControllerRef ref,) => ref.watch(
  createDeadlineDefaultControllerProvider(
    navigationService: ref.watch(goRouterNavigationServiceProvider),
    //details: <TaskDetails>[],
  ).notifier,
);

///CreateDeadlineModel
@riverpod
CreateDeadlineModel createDeadlineModel(CreateDeadlineModelRef ref)
=> ref.watch(
    createDeadlineDefaultControllerProvider(
    navigationService: ref.watch(goRouterNavigationServiceProvider),
    //details: <TaskDetails>[],
    ) as ProviderListenable<CreateDeadlineModel>,
);


/*
void loadTaskDetails() {
  var box = Hive.box('taskDetails');
  var taskDetailsMap = box.get('taskDetails');
  if (taskDetailsMap != null) {
    var taskDetails = TaskDetails.fromMap(taskDetailsMap);
    _taskName = taskDetails.taskName;
    _dueDate = taskDetails.dueDate;
    _timeRequired = taskDetails.timeRequired;
    _rhythm = taskDetails.rhythm;
  }
}*/
