/// The Deadline class is a model class that
/// represents a task that has a deadline.
class Deadline {

  /// The constructor for the Deadline class
  Deadline({
    required this.taskType,
    required this.taskCompleted,
    required this.course,
    required this.daysLeft,
  });
  /// The type of task
  String taskType;
  /// The completion status of the task
  bool taskCompleted;
  /// The course the task is associated with
  String course;
  /// The number of days left until the task is due
  String daysLeft;
}
