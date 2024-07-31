import 'package:hive/hive.dart';
import 'package:studybuddy/database/task/tasks_model.dart';
import 'package:studybuddy/database/task_details/task_details_model.dart';

class TasksMethods {
  final Box<TasksModel> tasksBox;

  TasksMethods(this.tasksBox);

  List<TasksModel> getTasks() {
    return tasksBox.values.toList();
  }

  void addTask(TasksModel task) {
    tasksBox.add(task);
  }

  void deleteTask(int index) {
    tasksBox.deleteAt(index);
  }
  void deleteAll() {
    tasksBox.clear();
  }

  void changeBox(int index) {
    final task = tasksBox.getAt(index) as TasksModel;

    task.taskCompleted = !task.taskCompleted;

    tasksBox.putAt(index, task);
  }

  DateTime normalizeDateTime(DateTime dateTime) {
    return DateTime(dateTime.year, dateTime.month, dateTime.day);
  }

  Future<String?> getCorrectKeyForTask(int taskId) async {
    var box = await Hive.openBox<TaskDetailsModel>('taskDetails');
    String? correctKey;

    for (var key in box.keys) {
      var taskDetail = box.get(key);
      if (taskDetail != null && taskDetail.id == taskId) {
        correctKey = key.toString();
        break;
      }
    }

    return correctKey;
  }

  Future<void> calculateDaysLeft() async {
    DateTime now = DateTime.now();
    now = normalizeDateTime(now);
    var box = await Hive.openBox<TaskDetailsModel>('taskDetails');

    for (int i = 0; i < tasksBox.length; i++) {
      final task = tasksBox.getAt(i) as TasksModel;
      var correctKey = await getCorrectKeyForTask(task.id);
      final taskDetails = box.get(correctKey);
      if (correctKey == null) {
        throw Exception('TaskDetails key for task ID ${task.id} not found');
      }
      if (taskDetails != null) {
        DateTime taskDate = DateTime.parse(taskDetails.date);
        taskDate = normalizeDateTime(taskDate);
        int daysLeft = taskDate
            .difference(now)
            .inDays;
        task.daysLeft = daysLeft;
        await tasksBox.putAt(i, task);
      }
    }
  }

  Future<void> sortTasksByDeadline() async {
    final tasksList = tasksBox.values.toList();
    tasksList.sort((a, b) => a.daysLeft.compareTo(b.daysLeft));
    await tasksBox.clear();
    for (var task in tasksList) {
      await tasksBox.add(task);
    }
  }

  Future<void> sortTasksByName() async {
    final tasksList = tasksBox.values.toList();
    tasksList.sort((a, b) => a.taskName.compareTo(b.taskName));
    await tasksBox.clear();
    for (var task in tasksList) {
      await tasksBox.add(task);
    }
  }
}