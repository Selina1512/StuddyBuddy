import 'package:dartz/dartz.dart';
import 'package:studybuddy/UI/deadline/deadline_model.dart';
import 'package:studybuddy/database/task/tasks_model.dart';
import 'package:studybuddy/commons/failures.dart';
import 'package:studybuddy/database/task/tasks_methods.dart';
import 'package:studybuddy/database/task/tasks_repository.dart';

class TasksRepositoryImpl implements TasksRepository {
  final TasksMethods repository;

  TasksRepositoryImpl(this.repository);

  @override
  Future<void> addTask(Tasks task) async {
    final tasksModel = TasksModel.fromEntity(task);
    repository.addTask(tasksModel);
  }

  @override
  Future<void> deleteTask(int index) async {
    repository.deleteTask(index);
  }

  @override
  Future<void> deleteAll() async {
   repository.deleteAll();
  }

  @override
  Future<void> changeBox(int index) async {
    repository.changeBox(index);
  }

  @override
  Future<void> calculateDaysLeft() async {
    repository.calculateDaysLeft();
  }


  @override
  Future<void> sortTasksByDeadline() async {
    repository.sortTasksByDeadline();
  }


  @override
  Future<void> sortTasksByName() async {
    repository.sortTasksByName();
  }

  @override
  Future<Either<Failure, List<Tasks>>> getTask() async {
    try {
      final tasksModel = repository.getTasks();
      List<Tasks> tasks = tasksModel.map((model) => model.toEntity())
          .toList();
      return Right(tasks);
    } catch(err){
      return Left(Error(err.toString()));
    }
  }
}