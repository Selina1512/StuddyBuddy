import 'package:hive/hive.dart';
import 'package:studybuddy/UI/deadline/deadline_model.dart';

part 'tasks_model.g.dart';

@HiveType(typeId: 2)
class TasksModel {

  TasksModel({
    required this.taskType,
    required this.taskCompleted,
    required this.course,
    required this.daysLeft,
    required this.taskName,
    required this.id,
  });
  @HiveField(0)
  String taskType;

  @HiveField(1)
  bool taskCompleted;

  @HiveField(2)
  String course;

  @HiveField(3)
  int daysLeft;

  @HiveField(4)
  String taskName;

  @HiveField(5)
  int id;

  factory TasksModel.fromEntity(Tasks tasks) => TasksModel(
    taskType: tasks.taskType,
    taskCompleted: tasks.taskCompleted,
    course: tasks.course,
    daysLeft: tasks.daysLeft,
    taskName: tasks.taskName,
    id: tasks.id,
  );

  Tasks toEntity() => Tasks(
    taskType: taskType,
    taskCompleted: taskCompleted,
    course: course,
    daysLeft: daysLeft,
    taskName: taskName,
    id: id,
  );
}
