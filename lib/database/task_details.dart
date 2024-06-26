/*
class TaskDetails {
  /// A model that represents the details of a task.
  TaskDetails({
    required this.taskDescription,
    required this.date,
    required this.time,
    required this.rhythm,
  });

  /// The description of the task.
  final String taskDescription;

  /// The date of the task.
  final DateTime date;

  /// The time of the task.
  final int time;

  /// The rhythm of the task.
  final int rhythm;



  /// Creates a TaskDetails from a JSON object.
  */
/*factory TaskDetails.fromJson(Map<String, dynamic> json) => TaskDetails(
        taskDescription: json['taskDescription'] as String,
        date: DateTime.parse(json['date'] as String),
        time: json['time'] as int,
        rhythm: json['rhythm'] as int,
      );*//*


  TaskDetails.fromMap(Map<String, dynamic> map, this.taskDescription, this.date, this.time)
      : taskName = map['taskName'],
        dueDate = DateTime.parse(map['dueDate']),
        timeRequired = map['timeRequired'],
        rhythm = map['rhythm'];

  /// Creates a JSON object from a TaskDetails.
  Map<String, dynamic> toMap() => {
        'taskDescription': taskDescription,
        'date': date.toIso8601String(),
        'time': time,
        'rhythm': rhythm,
      };
}*/
import 'package:hive/hive.dart';

part 'task_details.g.dart';

@HiveType(typeId: 0)
/// Tasks
class TaskDetails {
  /// Tasks
  TaskDetails({
    required this.taskDescription,
    required this.date,
    required this.time,
    required this.rhythm,
  });
  @HiveField(0)
  /// Task type
  String taskDescription;

  @HiveField(1)
  /// Task completed
  String date;

  @HiveField(2)
  /// Course
  int time;

  @HiveField(3)
  /// Days left
  int rhythm;
}





/*
class TaskDetails {
  String taskDescription;
  DateTime date;
  int time;
  int rhythm;

  TaskDetails({
    required this.taskDescription,
    required this.date,
    required this.time,
    required this.rhythm,
  });

  Map<String, dynamic> toMap() {
    return {
      'taskDescription': taskDescription,
      'date': date.toIso8601String(),
      'time': time,
      'rhythm': rhythm,
    };
  }
}*/
