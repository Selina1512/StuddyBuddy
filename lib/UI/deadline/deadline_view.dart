import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:studybuddy/UI/deadline/deadline_provider.dart';
import 'package:studybuddy/UI/deadline/widget/background_widget.dart';
import 'package:studybuddy/UI/deadline/widget/deadline_tile.dart';
import 'package:studybuddy/commons/nav_bar.dart';
import 'package:studybuddy/database/task/tasks_provider.dart';
import 'package:studybuddy/navigation_service/navigation_routes.dart';

class DeadlineView extends ConsumerWidget {

  const DeadlineView({super.key,});



  @override
  Widget build(BuildContext context, WidgetRef ref) {

    @override

    final controller = ref.read(deadlineControllerProvider);

    //controller.computeDaysLeft();

    final taskList = ref.watch(tasksListNotifierProvider);
    ref.watch(tasksListNotifierProvider.notifier).loadTrips();


    return Scaffold(
        appBar: AppBar(
          title: const Text('Deadlines'),
          backgroundColor: const Color.fromRGBO(203, 199, 216, .8),
          actions: <Widget>[
            PopupMenuButton<String>(
              onSelected: (String value) {
                switch (value) {
                  case 'Name':
                  controller.sortTasksByName();

                                  break;
                  case 'Abgabe':
                  controller.sortTasksByDeadline();
                                      break;
                }
              },
              itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                const PopupMenuItem<String>(
                  value: 'Name',
                  child: Text('Nach Namen sortieren'),
                ),
                const PopupMenuItem<String>(
                  value: 'Abgabe',
                  child: Text('Nach Abgabe sortieren'),
                ),
              ],
            ),
          ],
        ),
        body: GradientBackground(
                child: taskList.isEmpty
                    ? Align(
                  alignment: Alignment.bottomLeft,
                  child: Image.asset(
                      'assets/duck1.png', width: 400, height: 300),
                )
                    : ListView.builder(
                  itemCount: taskList.length,
                  itemBuilder: (context, index) {
                    var task = taskList[index];
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white.withOpacity(0.5),
                      ),
                      padding: const EdgeInsets.all(8),
                      margin: const EdgeInsets.all(17),
                      child: GestureDetector(
                        onTap: () async {
                          context.go(
                              '${Navigationroutes.deadlineDetails}/${task.id}');
                        },
                        child: DeadlineTile(
                          taskType: task.taskType,
                          taskCompleted: task.taskCompleted,
                          course: task.course,
                          daysLeft: task.daysLeft <= 0
                              ? 'Deadline abgelaufen'
                              : 'Fällig in ${task.daysLeft} Tagen',
                          taskName: task.taskName,
                          onChanged: (value) {
                            ref.watch(deadlineControllerProvider)
                                .checkBoxChanged(
                              value,
                              index,
                            );
                                                    },
                        ),
                      ),
                    );
                  },
                ),
              ),
            bottomNavigationBar: NavBar(
            onTabChange: (index)
           {},
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () =>
              controller.createNewTask(context, controller.addTask),
          child: const Icon(Icons.add),
        ),
      );
  }
}

///Controller for the Deadline
abstract class DeadlineController {
  ///Adds a task to the list
  void addTask(bool isExam, String taskName);
  void createNewTask(BuildContext context, void Function(bool isExam,
      String taskName,) addTask,);
  void checkBoxChanged(bool? value, int index);
  void computeDaysLeft();
  void sortTasksByDeadline();
  void sortTasksByName();
}
