import 'package:studybuddy/deadline_week/deadline_week_model.dart';
import 'package:studybuddy/deadline_week/task.dart';

/// A controller for the deadlines of the week.
class DeadlinesWeekController {

  /// A controller for the deadlines of the week.
  DeadlinesWeekController(this._model);
  final DeadlinesWeekModel _model;

  /// Checkbox changed
  void addTask(String day, String name, DateTime dueDate, int rhythm) {
    //_model.addTask(day, name, dueDate, rhythm);
  }

  /// Delete Task
  Map<String, List<Task>> get tasksOfWeek => _model.tasksOfWeek;
}
