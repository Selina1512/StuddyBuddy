import 'package:studybuddy/UI/createdeadline/create_deadline_model.dart';
import 'package:studybuddy/UI/deadline/deadline_model.dart';
import 'package:studybuddy/commons/failures.dart';
import 'package:studybuddy/database/task/tasks_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:studybuddy/database/task_details/task_details_repository.dart';

class GetTask {
  final TasksRepository repository;

  GetTask(this.repository);

  Future<Either<Failure,List<Tasks>>> call() {
    return repository.getTask();
  }
}
class GetTaskDetails {
  final TaskDetailsRepository repository;

  GetTaskDetails(this.repository);

  Future<Either<Failure,List<TaskDetails>>> call() {
    return repository.getTaskDetails();
  }
}