import 'package:studybuddy/database/task/tasks_repository.dart';

import '../task_details/task_details_repository.dart';

class DeleteTask {
  final TasksRepository repository;

  DeleteTask(this.repository);

  Future<void> call(int index) {
    return repository.deleteTask(index);
  }
}

class DeleteTaskDetails {
  final TaskDetailsRepository repository;

  DeleteTaskDetails(this.repository);

  Future<void> call(int index) {
    return repository.deleteTaskDetails(index);
  }
}