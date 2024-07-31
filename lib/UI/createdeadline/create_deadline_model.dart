import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_deadline_model.freezed.dart';

@freezed
class CreateDeadlineModel with _$CreateDeadlineModel {
  factory CreateDeadlineModel({
    required Map<String, bool> selectedDays,
  }) = _CreateDeadlineModel;
}

class TaskDetails {
  final String taskDescription;
  final String date;
  final int time;
  final List<String> selectedDays;
  final int id;


  TaskDetails({
    required this.taskDescription,
    required this.date,
    required this.time,
    required this.selectedDays,
    required this.id,
  });
}
