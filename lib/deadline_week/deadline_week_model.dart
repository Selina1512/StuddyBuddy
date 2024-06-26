import 'package:studybuddy/deadline_week/task.dart';

/// A model for the deadlines of the week.
class DeadlinesWeekModel {
  /// A model for the deadlines of the week.
  final Map<String, List<Task>> tasksOfWeek = {
    'Montag': [],
    'Dienstag': [],
    'Mittwoch': [],
    'Donnerstag': [],
    'Freitag': [],
    'Samstag': [],
    'Sonntag': [],
  };

  /// Adds a task to the list of tasks of the week.
  /*void addTask(String day, String name, DateTime dueDate, int rhythm) {
    tasksOfWeek[day]?.add(Task(name: name, dueDate: dueDate, rhythm: rhythm));
  }*/
}
