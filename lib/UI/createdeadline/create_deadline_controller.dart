import 'dart:core';
import 'package:hive/hive.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:studybuddy/UI/createdeadline/create_deadline_model.dart';
import 'package:studybuddy/UI/createdeadline/create_deadline_view.dart';
import 'package:studybuddy/UI/createdeadline/services/create_deadline_navigation.dart';
import 'package:studybuddy/database/task/tasks_model.dart';
import 'package:studybuddy/database/task_details/task_details_model.dart';
import 'package:studybuddy/database/task/tasks_provider.dart';

part 'create_deadline_controller.g.dart';

@riverpod
class CreateDeadlineDefaultController extends _$CreateDeadlineDefaultController
    implements CreateDeadlineController {
  late Box<TasksModel> tasksBox;

  Map<String, dynamic> taskDetailsToMap(TaskDetailsModel taskDetails) {
    return {
      'taskDescription': taskDetails.taskDescription,
      'date': taskDetails.date,
      'time': taskDetails.time,
      'selectedDays': taskDetails.selectedDays,
      'id': taskDetails.id,
    };
  }

  DateTime _selectedDate = DateTime.now();

  @override
  DateTime get selectedDate => _selectedDate;

  @override
  CreateDeadlineModel build({
    required CreateDeadlineNavigationService navigationService,
  }) {
    return CreateDeadlineModel(
      selectedDays: <String, bool>{
        'Montag': false,
        'Dienstag': false,
        'Mittwoch': false,
        'Donnerstag': false,
        'Freitag': false,
        'Samstag': false,
        'Sonntag': false,
      },
    );
  }

  @override
  Future<void> saveTaskDetails(
    String taskDescription,
    DateTime date,
    int time,
    Map<String, bool> selectedDaysMap,
  ) async {
    Map<String, bool> selectedDaysMap = state.selectedDays;

    List<String> selectedDays = selectedDaysMap.entries
        .where((entry) => entry.value == true)
        .map((entry) => entry.key)
        .toList();

    final dateWithoutTime = DateTime(
      date.year,
      date.month,
      date.day,
    );
    final dateString = dateWithoutTime.toIso8601String().substring(0, 10);
    final taskDetailsBox = await Hive.openBox<TaskDetailsModel>('taskDetails');

    int id = 0;
    if (taskDetailsBox.isEmpty) {
      id = 0;
    } else {
      var lastTask = taskDetailsBox.getAt(taskDetailsBox.length - 1);
      id = (lastTask!.id + 1);
    }
    final taskDetails = TaskDetailsModel(
      taskDescription: taskDescription,
      date: dateString,
      time: time,
      selectedDays: selectedDays,
      id: id,
    );

    final key = DateTime.now().millisecondsSinceEpoch.toString();
    await taskDetailsBox.put(key, taskDetails);

    ref.read(tasksListNotifierProvider.notifier).calculateDaysLeft();
    ref.read(tasksListNotifierProvider.notifier).loadTrips();

    /*await taskDetailsBox.clear();
    ref.read(tasksListNotifierProvider.notifier)
        .deleteAll();
    ref.read(tasksListNotifierProvider.notifier)
        .loadTrips();*/
  }

  @override
  set selectedDate(DateTime date) {
    _selectedDate = date;
  }

  @override
  void toggleDay(String day) {
    final newSelectedDays = {
      ...state.selectedDays,
      day: !state.selectedDays[day]!,
    };
    state = state.copyWith(selectedDays: newSelectedDays);
  }
}
