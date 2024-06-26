import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:studybuddy/components/custom_appbar.dart';
import 'package:studybuddy/components/nav_bar.dart';
import 'package:studybuddy/database/boxTask.dart';
import 'package:studybuddy/database/tasks.dart';
import 'package:studybuddy/deadline/deadline_model.dart';
import 'package:studybuddy/deadline/deadline_provider.dart';
import 'package:studybuddy/deadline/widget/background_widget.dart';
import 'package:studybuddy/deadline/widget/deadline_tile.dart';

import '../navigation_service/NavigationRoutes.dart';

class DeadlineView extends ConsumerWidget {
  const DeadlineView({Key? key,});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final DeadlineController controller = ref.read(deadlineControllerProvider);
    final DeadlineModel model = ref.watch(deadlineModelProvider);

    return Scaffold(
      appBar: CustomAppBar(
        title: 'Deadlines',
      ),
      body: GradientBackground(
        child: ListView.builder(
          itemCount: boxTask.length,
          itemBuilder: (context, index) {
            Tasks task = boxTask.getAt(index) as Tasks;
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white.withOpacity(0.5),
              ),
              padding: EdgeInsets.all(8.0),
              margin: EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  //controller.updateDeadlineList();
                  context.go(Navigationroutes.deadlineDetails);
                },
              child: DeadlineTile(
                taskType: task.taskType,
                taskCompleted: task.taskCompleted,
                course: task.course,
                daysLeft: task.daysLeft.toString(),
                taskName: task.taskName,
                onChanged: (value){
                    ref.read(deadlineControllerProvider).checkBoxChanged(value, index);
                },
              ),)
            );
          },
        ),
      ),
      bottomNavigationBar: NavBar(onTabChange: (int ) {  },),
      floatingActionButton: FloatingActionButton(
        onPressed: () => controller.createNewTask(context, controller.addTask),
        child: const Icon(Icons.add),
      ),
    );
  }
}

abstract class DeadlineController {
  void addTask(bool isExam, String taskName);
  void createNewTask(BuildContext context, void Function(bool isExam,String taskName) addTask);
  void checkBoxChanged(bool? value, int index);
  void updateDeadlineList();
}