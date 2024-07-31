import 'package:hive/hive.dart';
import 'package:studybuddy/database/task_details/task_details_model.dart';

class TaskDetailsMethods {
  final Box<TaskDetailsModel> taskDetailsBox;

  TaskDetailsMethods(this.taskDetailsBox);

  List<TaskDetailsModel> getTaskDetails() {
    return taskDetailsBox.values.toList();
  }

  void addTaskDetails(TaskDetailsModel task) {
    taskDetailsBox.add(task);
  }

  void deleteTaskDetails(int index) {
    taskDetailsBox.deleteAt(index);
  }

}