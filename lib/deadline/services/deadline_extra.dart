import 'deadline.dart';


abstract class DeadlineExtra {
  Stream<List<Deadline>> deadlines();
  void addDeadline(Deadline deadline);
}