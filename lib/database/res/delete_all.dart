import 'package:studybuddy/database/task/tasks_repository.dart';

class DeleteAll {
  final TasksRepository repository;

  DeleteAll(this.repository);

  Future<void> call() {
    return repository.deleteAll();
  }
}