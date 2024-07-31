import 'package:studybuddy/database/task/tasks_repository.dart';

class CalculateDaysLeft {
  final TasksRepository repository;

  CalculateDaysLeft(this.repository);

  Future<void> call() {
    return repository.calculateDaysLeft();
  }
}