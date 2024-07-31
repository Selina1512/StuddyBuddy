import 'package:hive/hive.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:studybuddy/UI/Deadline_details/deadline_detail_model.dart';
import 'package:studybuddy/UI/Deadline_details/deadline_detail_view.dart';
import 'package:studybuddy/UI/deadline/services/deadline_navigation.dart';
import 'package:studybuddy/database/task/tasks_provider.dart';
import 'package:studybuddy/database/task_details/task_details_model.dart';

part 'deadline_details_controller.g.dart';

@riverpod
class DeadlineDetailsDefaultController
    extends _$DeadlineDetailsDefaultController
    implements DeadlineDetailsController {
  @override
  TaskDetailsMode build({
    required DeadlineNavigationService navigationService,
  }) {
    return TaskDetailsMode(
        taskDescription: '', date: '', time: 0, selectedDays: [], id: 0);
  }

  @override
  void deleteTask(int index) {
    final Box<TaskDetailsModel> taskDetailsBox = Hive.box('taskDetails');
    for (int i = 0; i < taskDetailsBox.length; i++) {
      final currentTask = taskDetailsBox.getAt(i);
      if (currentTask != null && currentTask.id == index) {
        taskDetailsBox.deleteAt(i);
        ref.read(tasksListNotifierProvider.notifier).removeTask(i);
        ref.read(tasksListNotifierProvider.notifier).loadTrips();
        break;
      }
    }
    }

  @override
  TaskDetailsModel? find(int index) {
    final Box<TaskDetailsModel> taskDetailsBox = Hive.box('taskDetails');
    TaskDetailsModel? taskDetails;
    for (int i = 0; i < taskDetailsBox.length; i++) {
      final currentTask = taskDetailsBox.getAt(i);
      if (currentTask != null && currentTask.id == index) {
        taskDetails = currentTask;
        break;
      }
    }
    return taskDetails;
  }
}
