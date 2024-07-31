import 'package:hive/hive.dart';
import 'package:studybuddy/UI/deadline_week/deadline_week_model.dart';
import 'package:studybuddy/UI/deadline_week/task.dart';
import 'package:studybuddy/database/task/tasks_model.dart';
import 'package:studybuddy/database/task_details/task_details_model.dart';


class DeadlinesWeekController {

  DeadlinesWeekController(this._model);
  final DeadlinesWeekModel _model;

  Future<Map<String, List<String>>> mapTasksToWeekdays() async {
    final taskDetailsBox = await Hive.openBox<TaskDetailsModel>('taskDetails');
    var box =  await Hive.openBox<TasksModel>('tasksneu');


    Map<String, List<String>> tasksOfWeek = {
      'Montag': [],
      'Dienstag': [],
      'Mittwoch': [],
      'Donnerstag': [],
      'Freitag': [],
      'Samstag': [],
      'Sonntag': [],
    };

    for (var taskDetail in taskDetailsBox.values) {
      for (var task in box.values) {
        if (taskDetail.id == task.id) {
          for (var day in taskDetail.selectedDays) {
            tasksOfWeek[day]?.add(task.taskName);
          }
        }
      }
    }
    return tasksOfWeek;
  }

  Future<List<TaskDetailsModel>> getSavedTasks() async {
    final taskDetailsBox = await Hive.openBox<TaskDetailsModel>('taskDetails');
    return taskDetailsBox.values.toList();
  }

  Map<String, List<Task>> get tasksOfWeek => _model.tasksOfWeek;
}
