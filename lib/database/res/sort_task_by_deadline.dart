import 'package:studybuddy/database/task/tasks_repository.dart';

class SortTaskByDeadline {
  final TasksRepository repository;

  SortTaskByDeadline(this.repository);

  Future<void> call(){
    return repository.sortTasksByDeadline();
  }
}