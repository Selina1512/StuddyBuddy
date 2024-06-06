import 'package:flutter/material.dart';

///create deadline tile
class DeadlineTile extends StatelessWidget {

  /// Creates a deadline tile.
  const DeadlineTile({
    super.key,
    required this.taskType,
    required this.taskCompleted,
    required this.onChanged,
    required this.course,
    required this.daysLeft,
  });

  /// Creates a deadline tile.
  final String taskType;
  /// The task completion status.
  final bool taskCompleted;
  /// The function that is called when the checkbox is pressed.
  final void Function(bool?)? onChanged;
  /// The course of the deadline.
  final String course;
  /// The days left until the deadline.
  final String daysLeft;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
      child: Container(
        height: 100,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        decoration: BoxDecoration(
          color: const Color.fromRGBO(255, 255, 255, 60),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(taskType,
                style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    height: .4,
                ),
            ),
            //SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(course, style: const TextStyle(fontSize: 16)),
                Checkbox(
                  value: taskCompleted,
                  onChanged: onChanged,
                ),
              ],
            ),
            //SizedBox(height: 8),
            Text(daysLeft,
                style: const TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                    height: .4,
                ),
            ),
          ],
        ),
      ),
    );
  }
  
}
  
