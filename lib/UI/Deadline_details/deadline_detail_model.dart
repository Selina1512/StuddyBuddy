import 'package:freezed_annotation/freezed_annotation.dart';

part 'deadline_detail_model.freezed.dart';


@freezed
class TaskDetailsMode with _$TaskDetailsMode {
  factory TaskDetailsMode({
    required String taskDescription,
    required String date,
    required int time,
    required List<String> selectedDays,
    required int id,
  }) = _TaskDetailsMode;
}