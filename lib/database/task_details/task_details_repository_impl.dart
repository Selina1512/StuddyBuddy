import 'package:dartz/dartz.dart';
import 'package:studybuddy/UI/createdeadline/create_deadline_model.dart';
import 'package:studybuddy/commons/failures.dart';
import 'package:studybuddy/database/task_details/task_details_methods.dart';
import 'package:studybuddy/database/task_details/task_details_model.dart';
import 'package:studybuddy/database/task_details/task_details_repository.dart';

class TaskDetailsRepositoryImpl implements TaskDetailsRepository {
  final TaskDetailsMethods repository;

  TaskDetailsRepositoryImpl(this.repository);

  @override
  Future<void> addTaskDetails(TaskDetails taskDetails) async {
    final tasksModel = TaskDetailsModel.fromEntity(taskDetails);
    repository.addTaskDetails(tasksModel);
  }

  @override
  Future<void> deleteTaskDetails(int index) async {
    repository.deleteTaskDetails(index);
  }

  @override
  Future<Either<Failure, List<TaskDetails>>> getTaskDetails() async {
    try {
      final taskDetailModel = repository.getTaskDetails();
      List<TaskDetails> taskDetails = taskDetailModel.map((model) => model.toEntity())
          .toList();
      return Right(taskDetails);
    } catch(err){
      return Left(Error(err.toString()));
    }
  }
}