import 'package:flutter/material.dart';

/// A StatelessWidget that displays a deadline tile.
class DeadlineTile extends StatelessWidget {

  /// Creates a deadline tile.
  const DeadlineTile({
    required this.taskType,
    required this.taskCompleted,
    required this.onChanged,
    required this.course,
    required this.daysLeft,
    required this.taskName,
    super.key,
  });
  /// Creates a deadline tile.
  final String taskType;
  /// The completion status of the task.
  final bool taskCompleted;
  /// The function that is called when the checkbox is changed.
  final ValueChanged<bool?> onChanged;
  /// The course the task is associated with.
  final String course;
  /// The number of days left until the task is due.
  final String daysLeft;
  /// The name of the task.
  final String taskName;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Checkbox(
        value: taskCompleted,
        onChanged: onChanged,
      ),
      title: Text(taskName),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(taskType),
          Text(daysLeft),
        ],
      ),
    );
  }
}
