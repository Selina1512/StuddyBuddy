import 'package:hive/hive.dart';
import 'package:studybuddy/UI/createdeadline/create_deadline_model.dart';

part 'task_details_model.g.dart';

@HiveType(typeId: 0)
/// TasksDetails class
class TaskDetailsModel {
  TaskDetailsModel({
    required this.taskDescription,
    required this.date,
    required this.time,
    required this.selectedDays,
    required this.id,
  });
  @HiveField(0)
  String taskDescription;

  @HiveField(1)
  String date;

  @HiveField(2)
  int time;

  @HiveField(3)
  List<String> selectedDays;

  @HiveField(4)
  int id;

  factory TaskDetailsModel.fromEntity(TaskDetails tasksDetails) => TaskDetailsModel(
    taskDescription: tasksDetails.taskDescription,
    date: tasksDetails.date,
    time: tasksDetails.time,
    selectedDays: tasksDetails.selectedDays,
    id: tasksDetails.id,
  );

  TaskDetails toEntity() => TaskDetails(
    taskDescription: taskDescription,
    date: date,
    time: time,
    selectedDays: selectedDays,
    id: id,
  );
}
