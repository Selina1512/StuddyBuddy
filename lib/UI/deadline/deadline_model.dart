import 'package:freezed_annotation/freezed_annotation.dart';

part 'deadline_model.freezed.dart';

/// DeadlineModel
@freezed
class DeadlineModel with _$DeadlineModel {
  ///factory DeadlineModel
  factory DeadlineModel({
    required int values,
  }) = _DeadlineModel;
}

class Tasks {
  final String taskType;
  bool taskCompleted;
  final String course;
  final int daysLeft;
  final String taskName;
  final int id;

  Tasks({
    required this.taskType,
    required this.taskCompleted,
    required this.course,
    required this.daysLeft,
    required this.taskName,
    required this.id,
  });
}
