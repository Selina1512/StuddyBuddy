import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:studybuddy/UI/deadline/deadline_model.dart';
import 'package:studybuddy/database/task/tasks_model.dart';
import 'package:studybuddy/database/res/add_task.dart';
import 'package:studybuddy/database/res/calculate_days_left.dart';
import 'package:studybuddy/database/res/change_box.dart';
import 'package:studybuddy/database/res/delete_task.dart';
import 'package:studybuddy/database/res/delete_all.dart';
import 'package:studybuddy/database/res/get_task.dart';
import 'package:studybuddy/database/res/sort_task_by_deadline.dart';
import 'package:studybuddy/database/res/sort_tasks_by_name.dart';
import 'package:studybuddy/database/task/tasks_methods.dart';
import 'package:studybuddy/database/task/tasks_repository.dart';
import 'package:studybuddy/database/task/tasks_repository_impl.dart';


final tasksNeuClassProvider = Provider<TasksMethods>((ref){
  final Box<TasksModel> tasksBox= Hive.box('tasksneu');
  return TasksMethods(tasksBox);
});

final tasksRepositoryProvider = Provider<TasksRepository>((ref){
  final repository = ref.read(tasksNeuClassProvider);
  return TasksRepositoryImpl(repository);
});

final addTaskProvider = Provider<AddTask>((ref){
  final repository = ref.read(tasksRepositoryProvider);
  return AddTask(repository);
});

final deleteTaskProvider = Provider<DeleteTask>((ref){
  final repository = ref.read(tasksRepositoryProvider);
  return DeleteTask(repository);
});

final deleteAllProvider = Provider<DeleteAll>((ref){
  final repository = ref.read(tasksRepositoryProvider);
  return DeleteAll(repository);
});

final changeBoxProvider = Provider<ChangeBox>((ref){
  final repository = ref.read(tasksRepositoryProvider);
  return ChangeBox(repository);
});

final calculateDaysLeftProvider = Provider<CalculateDaysLeft>((ref){
  final repository = ref.read(tasksRepositoryProvider);
  return CalculateDaysLeft(repository);
});

final getTaskProvider = Provider<GetTask>((ref){
  final repository = ref.read(tasksRepositoryProvider);
  return GetTask(repository);
});

final sortTaskByDeadlineProvider = Provider<SortTaskByDeadline>((ref){
  final repository = ref.read(tasksRepositoryProvider);
  return SortTaskByDeadline(repository);
});

final sortTasksByNameProvider = Provider<SortTasksByName>((ref){
  final repository = ref.read(tasksRepositoryProvider);
  return SortTasksByName(repository);
});

final tasksListNotifierProvider = StateNotifierProvider<TasksListNotifier, List<Tasks>>((ref) {
  final getTask = ref.read(getTaskProvider);
  final addTask = ref.read(addTaskProvider);
  final deleteTask = ref.read(deleteTaskProvider);
  final changeBox = ref.read(changeBoxProvider);
  final calculateDaysLeft = ref.read(calculateDaysLeftProvider);
  final sortTaskByDeadline = ref.read(sortTaskByDeadlineProvider);
  final sortTasksByName = ref.read(sortTasksByNameProvider);
  final deleteAll = ref.read(deleteAllProvider);

  return TasksListNotifier(getTask, addTask, deleteTask, changeBox, calculateDaysLeft, sortTaskByDeadline, sortTasksByName, deleteAll);
});

class TasksListNotifier extends StateNotifier<List<Tasks>> {
  final GetTask _getTask;
  final AddTask _addTask;
  final DeleteTask _deleteTask;
  final ChangeBox _changeBox;
  final CalculateDaysLeft _calculateDaysLeft;
  final SortTaskByDeadline _sortTaskByDeadline;
  final SortTasksByName _sortTasksByName;
  final DeleteAll _deleteAll;

  TasksListNotifier(this._getTask, this._addTask, this._deleteTask, this._changeBox, this._calculateDaysLeft, this._sortTaskByDeadline, this._sortTasksByName, this._deleteAll) : super([]);

  Future<void> addNewTask(Tasks task) async {
    await _addTask(task);
  }

  Future<void> removeTask(int index) async {
    await _deleteTask(index);
  }

  Future<void> changeBox(int index) async {
    await _changeBox(index);
  }

  Future<void> calculateDaysLeft() async {
    await _calculateDaysLeft();
  }

  Future<void> sortTaskByDeadline() async {
    await _sortTaskByDeadline();
  }

  Future<void> sortTasksByName() async {
    await _sortTasksByName();
  }

  Future<void> deleteAll() async {
    await _deleteAll();
  }

  Future<void> loadTrips() async {
    final tasks = await _getTask();
    tasks.fold((error) => state = [], (task) => state = task);
  }


}