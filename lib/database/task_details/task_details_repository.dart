import 'package:dartz/dartz.dart';
import 'package:studybuddy/UI/createdeadline/create_deadline_model.dart';
import 'package:studybuddy/commons/failures.dart';

abstract class TaskDetailsRepository {
  Future<Either<Failure,List<TaskDetails>>> getTaskDetails();
  Future<void> addTaskDetails(TaskDetails taskDetails);
  Future<void> deleteTaskDetails(int index);
}