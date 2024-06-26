import 'package:freezed_annotation/freezed_annotation.dart';

part 'deadline_model.freezed.dart';

@freezed
class Task with _$Task {
  factory Task({
    required String taskType,
    required bool taskCompleted,
    required String course,
    required String daysLeft,
  }) = _Task;
}

@freezed
class DeadlineModel with _$DeadlineModel {
  factory DeadlineModel({
    required List<Task> deadlines,
  }) = _DeadlineModel;
}