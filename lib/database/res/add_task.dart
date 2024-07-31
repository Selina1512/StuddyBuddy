import 'package:studybuddy/UI/createdeadline/create_deadline_model.dart';
import 'package:studybuddy/UI/deadline/deadline_model.dart';
import 'package:studybuddy/database/task/tasks_repository.dart';
import 'package:studybuddy/database/task_details/task_details_repository.dart';

class AddTask {
  final TasksRepository repository;

  AddTask(this.repository);

  Future<void> call(Tasks task) {
    return repository.addTask(task);
  }
}
class AddTaskDetails {
  final TaskDetailsRepository repository;

  AddTaskDetails(this.repository);

  Future<void> call(TaskDetails taskDetails) {
    return repository.addTaskDetails(taskDetails);
  }
}