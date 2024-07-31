import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:studybuddy/database/boxTask.dart';
import 'package:studybuddy/database/tasks.dart';
import 'package:studybuddy/deadline/deadline_model.dart';
import 'package:studybuddy/deadline/deadline_view.dart';
import 'package:studybuddy/deadline/services/deadline_extra.dart';
import 'package:studybuddy/deadline/services/deadline_navigation.dart';
import 'package:studybuddy/deadline_diaglog/dialog_box.dart';

part 'deadline_controller.g.dart';

@riverpod
class DeadlineDefaultController extends _$DeadlineDefaultController
    implements DeadlineController {
  final TextEditingController _controller = TextEditingController();

  List<Task> tasks = [];
  String taskName = 'h';


  @override
  DeadlineModel build({
    required final DeadlineNavigationService navigationService,
    required final DeadlineExtra deadlineExtra,
}) {

    return DeadlineModel(
      deadlines: deadlineList.map((deadline) {
        return Task(
          taskType: deadline[0] as String,
          taskCompleted: deadline[1] as bool,
          course: deadline[2] as String,
          daysLeft: deadline[3] as String,
        );
      }).toList(), //deadlines: [],
    );
  }

  List<List<dynamic>> deadlineList = [
    ['Abgabe: ', true, 'Spanisch', 'noch: 20 Tage',],
  ];

  Future<Box<Tasks>> get _box async => await Hive.openBox<Tasks>('tasks');


  Future<List<Tasks>> getAllTodos() async {
    var box = await _box;
    return box.values.toList();
  }

  @override
  void addTask(bool isExam, String taskName) {
    String taskType;
    if(isExam)  {
      taskType = 'Klausur';
    } else {
      taskType = 'Abgabe';
    }
    deadlineList.add([if (isExam) 'Klausur: ' else 'Abgabe: ', false,
      'noch: 20 Tage', ' h',]);

    String key = DateTime.now().millisecondsSinceEpoch.toString();

    boxTask.put(key, Tasks(taskType: taskType, taskCompleted: false,
        course: 'course', daysLeft: 2, taskName: taskName));

    updateDeadlineList();

    state = build(navigationService: navigationService, deadlineExtra: deadlineExtra);
  }

  @override
  void createNewTask(BuildContext context, void Function(bool isExam, String taskName) addTask) {
    showDialog<void>(
      context: context,
      builder: (context) {
        return DialogBox(
          textController: _controller,
          onSubmitted: (value) {
            taskName = _controller.text;
            addTask(true, _controller.text);
          },
        );
      },
    );
  }
  @override
  void checkBoxChanged(bool? value, int index) async {
    Tasks task = boxTask.getAt(index) as Tasks;

    task.taskCompleted = value ?? false;

    boxTask.putAt(index, task);

    deadlineList[index][1] = value ?? false;

    updateDeadlineList();

    state = build(
      navigationService: navigationService,
      deadlineExtra: deadlineExtra,
    );
  }

  @override
  void updateDeadlineList() {

    for (int i = 0; i < boxTask.length; i++) {
      Tasks task = boxTask.getAt(i) as Tasks;

      deadlineList.add([
        task.taskType + ': ',
        task.taskCompleted,
        task.course,
        'noch: ' + task.daysLeft.toString() + ' Tage',
        ' ',
      ]);
    }

    state = build(
      navigationService: navigationService,
      deadlineExtra: deadlineExtra,
    );
  }


  }

