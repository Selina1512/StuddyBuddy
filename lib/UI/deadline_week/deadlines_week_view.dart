import 'package:flutter/material.dart';
import 'package:studybuddy/UI/deadline/widget/background_widget.dart';
import 'package:studybuddy/UI/deadline_week/deadline_week_controller.dart';
import 'package:studybuddy/UI/deadline_week/deadline_week_model.dart';
import 'package:studybuddy/commons/custom_appbar.dart';
import 'package:studybuddy/commons/nav_bar.dart';

class DeadlinesWeekView extends StatefulWidget {

  const DeadlinesWeekView({super.key,});
  @override
  DeadlinesWeekViewState createState() => DeadlinesWeekViewState();
}

class DeadlinesWeekViewState extends State<DeadlinesWeekView> {
  final List<String> daysOfWeek = ['Montag', 'Dienstag', 'Mittwoch',
    'Donnerstag', 'Freitag', 'Samstag', 'Sonntag',
  ];

  final DeadlinesWeekController controller =
  DeadlinesWeekController(DeadlinesWeekModel());

  @override
  Widget build(BuildContext context) {
    final todayIndex = DateTime
        .now()
        .weekday - 1;

    final orderedDaysOfWeek = [
      ...daysOfWeek.sublist(todayIndex),
      ...daysOfWeek.sublist(0, todayIndex),
    ];

    return Scaffold(
      appBar: const CustomAppBar(title: 'Wochenüberblick'),
      body: GradientBackground(
        child: FutureBuilder<Map<String, List<String>>>(
          future: controller.mapTasksToWeekdays(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            } else {
              return ListView.builder(
                itemCount: orderedDaysOfWeek.length,
                itemBuilder: (context, index) {
                  final day = orderedDaysOfWeek[index];
                  final tasks = snapshot.data?[day] ?? [];

                  return Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: MediaQuery
                                  .of(context)
                                  .size
                                  .width * 0.9,
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
                                subtitle: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: tasks.map((task) => Text(task))
                                      .toList(),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              );
            }
          },
        ),
      ),
        bottomNavigationBar: NavBar(onTabChange: (int int ) {  },),

    );
  }
}
