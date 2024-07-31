import 'package:studybuddy/database/task/tasks_repository.dart';

class ChangeBox {
  final TasksRepository repository;

  ChangeBox(this.repository);

  Future<void> call(int index) {
    return repository.changeBox(index);
  }
}