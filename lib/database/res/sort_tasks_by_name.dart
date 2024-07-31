import 'package:studybuddy/database/task/tasks_repository.dart';

class SortTasksByName {
  final TasksRepository repository;

  SortTasksByName(this.repository);

  Future<void> call() {
    return repository.sortTasksByName();
  }
}