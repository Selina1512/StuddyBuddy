import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:studybuddy/UI/createdeadline/create_deadline_model.dart';
import 'package:studybuddy/database/res/add_task.dart';
import 'package:studybuddy/database/res/delete_task.dart';
import 'package:studybuddy/database/res/get_task.dart';
import 'package:studybuddy/database/task_details/task_details_methods.dart';
import 'package:studybuddy/database/task_details/task_details_model.dart';
import 'package:studybuddy/database/task_details/task_details_repository.dart';
import 'package:studybuddy/database/task_details/task_details_repository_impl.dart';

final taskDetailsMethodsProvider = Provider<TaskDetailsMethods>((ref){
  final Box<TaskDetailsModel> taskDetailBox= Hive.box('taskDetails');
  return TaskDetailsMethods(taskDetailBox);
});

final taskDetailsRepositoryProvider = Provider<TaskDetailsRepository>((ref){
  final repository = ref.read(taskDetailsMethodsProvider);
  return TaskDetailsRepositoryImpl(repository);
});

final addTaskDetailsProvider = Provider<AddTaskDetails>((ref){
  final repository = ref.read(taskDetailsRepositoryProvider);
  return AddTaskDetails(repository);
});

final deleteTaskDetailsProvider = Provider<DeleteTaskDetails>((ref){
  final repository = ref.read(taskDetailsRepositoryProvider);
  return DeleteTaskDetails(repository);
});

final getTaskDetailsProvider = Provider<GetTaskDetails>((ref){
  final repository = ref.read(taskDetailsRepositoryProvider);
  return GetTaskDetails(repository);
});

final taskDetailsListNotifierProvider = StateNotifierProvider<TaskDetailsListNotifier, List<TaskDetails>>((ref) {
  final getTaskDetails = ref.read(getTaskDetailsProvider);
  final addTaskDetails = ref.read(addTaskDetailsProvider);
  final deleteTaskDetails = ref.read(deleteTaskDetailsProvider);


  return TaskDetailsListNotifier(getTaskDetails, addTaskDetails, deleteTaskDetails);
});

class TaskDetailsListNotifier extends StateNotifier<List<TaskDetails>> {
  final GetTaskDetails _getTaskDetails;
  final AddTaskDetails _addTaskDetails;
  final DeleteTaskDetails _deleteTaskDetails;

  TaskDetailsListNotifier(this._getTaskDetails, this._addTaskDetails, this._deleteTaskDetails) : super([]);

  Future<void> addNewTaskDetails(TaskDetails taskDetails) async {
    await _addTaskDetails(taskDetails);
  }

  Future<void> removeTaskDetails(int index) async {
    await _deleteTaskDetails(index);
  }

  Future<void> loadTaskDetails() async {
    final taskDetails = await _getTaskDetails();
    taskDetails.fold((error) => state = [], (taskDetails) => state = taskDetails);
  }


}