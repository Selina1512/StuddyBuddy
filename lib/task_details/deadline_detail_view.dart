import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
import 'package:studybuddy/components/custom_appbar.dart';
import 'package:studybuddy/components/nav_bar.dart';
import 'package:studybuddy/database/task_details.dart';
import 'package:studybuddy/deadline/widget/background_widget.dart';

/// A StatelessWidget that displays the details of a deadline.
class DeadlineDetailView extends ConsumerWidget {
  /// Creates a deadline detail view.
  const DeadlineDetailView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Box<TaskDetails> taskDetailsBox = Hive.box('taskDetails');

    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Deadline Details',
      ),
      body: GradientBackground(
          child: ListView.builder(

            itemCount: taskDetailsBox.length,
            itemBuilder: (BuildContext context, int index) {

              final TaskDetails taskDetails = taskDetailsBox.getAt(index)!;
              return Column(
                children: [
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: ListTile(
                      title: const Text('Aufgabe '),
                      subtitle: Text('Abgabe ${taskDetails.taskDescription}'),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const ListTile(
                      title: Text('Bewertung'),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Container(
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: ListTile(
                      title: const Text('Abgabe'),
                      subtitle: Text(taskDetails.date),
                    ),
                  ),
                ],
              );
            },
            /*children: [
              Positioned(
                top: 20,
                left: 20,
                child: Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child:const Text('Aufgabe'),
                ),
              ),
              Positioned(
                top: 250,
                left: 20,
                child: Container(
                    width: 200,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child:const Text('Bewertung'),
                ),
              ),
              Positioned(
                top: 320,
                left: 20,
                child: Container(
                    width: 200,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child:const Text('Abgabe ${taskDetails.taskDescription}' ),
                ),
              ),
            ],*/
          ),
      ),
      bottomNavigationBar: NavBar(onTabChange: (int int ) {  },),
    );
  }
}
