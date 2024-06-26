import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_deadline_model.freezed.dart';

/// A model that represents the data needed to create a deadline.
@freezed
class CreateDeadlineModel with _$CreateDeadlineModel {
  /// A model that represents the data needed to create a deadline.
  factory CreateDeadlineModel({
    required int currentValue,
    required List<TaskDetail> details,
  }) = _CreateDeadlineModel;
}

/// A model that represents the details of a task.
@freezed
class TaskDetail with _$TaskDetail {
  /// A model that represents the details of a task.
  factory TaskDetail({
    required String taskDescription,
    required DateTime date,
    required int time,
    required int rhythm,
  }) = _TaskDetail;
}
