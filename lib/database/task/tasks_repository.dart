import 'package:dartz/dartz.dart';
import 'package:studybuddy/UI/deadline/deadline_model.dart';
import 'package:studybuddy/commons/failures.dart';

abstract class TasksRepository {
  Future<Either<Failure,List<Tasks>>> getTask();
  Future<void> addTask(Tasks task);
  Future<void> deleteTask(int index);
  Future<void> changeBox(int index);
  Future<void> calculateDaysLeft();
  Future<void> sortTasksByDeadline();
  Future<void> sortTasksByName();
  Future<void> deleteAll();
}