import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:studybuddy/UI/deadline/deadline_model.dart';
import 'package:studybuddy/UI/deadline/deadline_view.dart';
import 'package:studybuddy/UI/deadline/services/deadline_navigation.dart';
import 'package:studybuddy/database/task/tasks_model.dart';
import 'package:studybuddy/database/task/tasks_provider.dart';
import 'deadline_diaglog/dialog_box.dart';

part 'deadline_controller.g.dart';

@riverpod
class DeadlineDefaultController extends _$DeadlineDefaultController
    implements DeadlineController {
  final TextEditingController _controller = TextEditingController();

  String taskName ='';

  @override
  DeadlineModel build({
    required DeadlineNavigationService navigationService,
  }) {
    return DeadlineModel(
      values: 0,
    );
  }

  List<List<dynamic>> deadlineList = [
    ['Abgabe: ', true, 'Spanisch', 'noch: 20 Tage',],
  ];

  @override
  Future<void> addTask(bool isExam, String taskName) async {
    String taskType;
    if(isExam)  {
      taskType = 'Klausur';
    } else {
      taskType = 'Abgabe';
    }

    int id;
    var box =  await Hive.openBox<TasksModel>('tasksneu');
    if(box.isEmpty) {
      id = 0;
    } else {
      var lastTask = box.getAt(box.length - 1);
      id = (lastTask!.id + 1);
    }

    final newTask = Tasks(taskType: taskType, taskCompleted: false, course: "course", daysLeft: 0, taskName: taskName, id: id);
    ref.read(tasksListNotifierProvider.notifier).addNewTask(newTask);
    ref.watch(tasksListNotifierProvider.notifier).loadTrips();
  }

  @override
  void createNewTask(BuildContext context, void Function(bool isExam,
      String taskName,) addTask,) {
    showDialog<void>(
      context: context,
      builder: (context) {
        return DialogBox(
          textController: _controller,
          onSubmitted: (value) async {
            taskName = _controller.text;
            addTask(true, _controller.text);
          },
        );
      },
    );
  }

  @override
  Future<void> checkBoxChanged(bool? value, int index) async {
    ref.read(tasksListNotifierProvider.notifier)
        .changeBox(index);
    ref.read(tasksListNotifierProvider.notifier)
        .loadTrips();
  }

  @override
  void computeDaysLeft() async {
    ref.read(tasksListNotifierProvider.notifier)
        .calculateDaysLeft();
    ref.read(tasksListNotifierProvider.notifier)
        .loadTrips();
  }

  @override
  Future<void> sortTasksByDeadline() async {
    ref.read(tasksListNotifierProvider.notifier)
        .sortTaskByDeadline();
    ref.read(tasksListNotifierProvider.notifier)
        .loadTrips();
  }

  @override
  Future<void> sortTasksByName() async {
    ref.read(tasksListNotifierProvider.notifier)
        .sortTasksByName();
    ref.read(tasksListNotifierProvider.notifier)
        .loadTrips();
  }
}
