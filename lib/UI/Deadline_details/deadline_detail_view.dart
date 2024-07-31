import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:studybuddy/UI/Deadline_details/deadline_details_provider.dart';
import 'package:studybuddy/UI/deadline/widget/background_widget.dart';
import 'package:studybuddy/commons/custom_appbar.dart';
import 'package:studybuddy/commons/nav_bar.dart';
import 'package:studybuddy/database/task_details/task_details_model.dart';
import 'package:studybuddy/navigation_service/navigation_routes.dart';

class DeadlineDetailView extends ConsumerWidget {
  const DeadlineDetailView({required this.id, super.key});

  final String id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final DeadlineDetailsController controller =
        ref.read(deadlineDetailsControllerProvider);

    int index1;
    try {
      index1 = int.parse(id);
    } catch (e) {
      index1 = 0;
    }

    TaskDetailsModel? taskDetails = controller.find(index1);
    /*for (int i = 0; i < taskDetailsBox.length; i++) {
      final currentTask = taskDetailsBox.getAt(i);
      if (currentTask != null && currentTask.id == index1) {
        taskDetails = currentTask;
        break;
      }
    }

    if (taskDetails == null) {
      throw Exception('Task with ID $index1 not found');
    }*/
    if (taskDetails == null) {
      return const Scaffold(
        appBar: CustomAppBar(
          title: 'Deadline Details',
        ),
        body: Center(
          child: Text('Task not found'),
        ),
      );
    }
      return Scaffold(
      appBar: const CustomAppBar(
        title: 'Deadline Details',
      ),
      body: GradientBackground(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(3),
              margin: const EdgeInsets.all(17),
              height: 200,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.5),
                borderRadius: BorderRadius.circular(15),
              ),
              child: ListTile(
                title: const Text(
                  'Aufgabe ',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                subtitle: Text(taskDetails.taskDescription),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              margin: const EdgeInsets.all(17),
              height: 160,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.5),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  const ListTile(
                    title: Text(
                      'Bewertung',
                      style: TextStyle(
                        fontSize: 19,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        labelText: 'Bewertung eingeben',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.all(3),
              margin: const EdgeInsets.all(17),
              height: 70,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.5),
                borderRadius: BorderRadius.circular(15),
              ),
              child: ListTile(
                title: const Text(
                  'Abgabe',
                  style: TextStyle(
                    fontSize: 19,
                  ),
                ),
                subtitle: Text(taskDetails.date),
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  icon: const Icon(Icons.delete),
                  onPressed: () {
                    controller.deleteTask(index1);
                    context.go(Navigationroutes.root);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: NavBar(
        onTabChange: (int int) {},
      ),
    );
  }
}

abstract class DeadlineDetailsController {
  void deleteTask(int index);
  TaskDetailsModel? find(int index);
}
