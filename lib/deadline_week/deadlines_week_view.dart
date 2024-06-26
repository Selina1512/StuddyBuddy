import 'package:flutter/material.dart';
import 'package:studybuddy/components/custom_appbar.dart';
import 'package:studybuddy/components/nav_bar.dart';
import 'package:studybuddy/deadline/widget/background_widget.dart';
import 'package:studybuddy/deadline_week/deadline_week_controller.dart';
import 'package:studybuddy/deadline_week/task.dart';

import 'deadline_week_model.dart';

/// A StatefulWidget that displays the deadlines of the week.
class DeadlinesWeekView extends StatefulWidget {

  /// Creates a deadline of the week.
  const DeadlinesWeekView({super.key,});
  /// Creates a deadline of the week.
  //final DeadlinesWeekController controller;

  @override
  DeadlinesWeekViewState createState() => DeadlinesWeekViewState();
}

/// A State of the DeadlinesWeekView.
class DeadlinesWeekViewState extends State<DeadlinesWeekView> {
  final List<String> daysOfWeek = ['Montag', 'Dienstag', 'Mittwoch',
    'Donnerstag', 'Freitag', 'Samstag', 'Sonntag',];

  final DeadlinesWeekController controller = DeadlinesWeekController(DeadlinesWeekModel());

  void navigate(int index) {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // Ermitteln Sie den aktuellen Wochentag
    final todayIndex = DateTime.now().weekday - 1;
    final today = daysOfWeek[todayIndex];

    // Erstellen Sie eine neue Liste, die mit dem heutigen Tag beginnt
    final orderedDaysOfWeek = [
      ...daysOfWeek.sublist(todayIndex),
      ...daysOfWeek.sublist(0, todayIndex),
    ];

    return Scaffold(
      appBar: const CustomAppBar(title: 'Wochenüberblick'),
      body: GradientBackground(
        child: ListView.builder(
          itemCount: orderedDaysOfWeek.length,
          itemBuilder: (context, index) {
            final day = orderedDaysOfWeek[index];
            final tasks = controller.tasksOfWeek[day] ?? [];

            return Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(),
                          ),
                        ),
                        child: ListTile(
                          title: Text(
                            day,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  for (final Task task in tasks)
                    ListTile(
                      title: Text(task.name),
                      subtitle: Text('Fällig am: ${task.dueDate}, Rhythmus: ${task.rhythm} Tage'),
                    ),
                ],
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: NavBar(
        onTabChange: navigate,
      ),
    );
  }
}