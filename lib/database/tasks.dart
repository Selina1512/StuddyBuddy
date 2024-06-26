import 'package:hive/hive.dart';

part 'tasks.g.dart';

@HiveType(typeId: 1)
/// Tasks
class Tasks {
  /// Tasks
  Tasks({
    required this.taskType,
    required this.taskCompleted,
    required this.course,
    required this.daysLeft,
    required this.taskName,
  });
  @HiveField(0)
  /// Task type
  String taskType;

  @HiveField(1)
  /// Task completed
  bool taskCompleted;

  @HiveField(2)
  /// Course
  String course;

  @HiveField(3)
  /// Days left
  int daysLeft;

  @HiveField(4)
  /// Task name
  String taskName;
}
