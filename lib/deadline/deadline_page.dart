import 'package:flutter/material.dart';
import 'package:studybuddy/components/nav_bar.dart';
import 'package:studybuddy/deadline/background_widget.dart';
import 'package:studybuddy/deadline/custom_appbar.dart';
import 'package:studybuddy/deadline/deadline_tile.dart';
import 'package:studybuddy/deadline/dialog_box.dart';

/// A StatefulWidget that displays deadlines.
class Deadline extends StatefulWidget {

  /// Creates a deadline.
  const Deadline({super.key});

  @override
  State<Deadline> createState() => _DeadlinePageState();
}


class _DeadlinePageState extends State<Deadline> {

  //text controller
  final _controller = TextEditingController();

  List<List<dynamic>> deadlineList = [
    ['Abgabe: ', false, 'Spanisch', 'noch: 20 Tage', ' '],
    ['Klausur: ', false, 'Spanisch', 'noch 22 tage', ' '],
  ];

  void checkBoxChanged(bool? value, int index) {
    setState(() {
      deadlineList[index][1] = value ?? false;
    });
  }

  void createNewTask() {
    showDialog<void>(
        context: context,
        builder: (context) {
          return DialogBox(
            controller: _controller,
            addTask: addTask,
            createNewTask: () => Navigator.of(context).pop(),
          );
        },
    );
  }

  //int _selectedIndex = 0;

  void navigate(int index) {
    setState(() {
    });
  }

  void addTask(String name, bool isExam) {
    setState(() {
      deadlineList.add([if (isExam) 'Klausur: ' else 'Abgabe: ', false,
        name, 'noch: 20 Tage', ' ',]);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavBar(
        onTabChange: navigate,
      ),
      appBar: const CustomAppBar(title: 'Deadlines'),
      floatingActionButton: FloatingActionButton(
        onPressed: createNewTask,
        child: const Icon(Icons.add),
      ),
      body: GradientBackground(
        child: ListView.builder(
          itemCount: deadlineList.length,
          itemBuilder: (context, index) {
            if (index >= deadlineList.length) {
              // Return an empty widget for invalid indices
              return const SizedBox();
            }
            return DeadlineTile(
              taskType: deadlineList[index][0] as String,
              taskCompleted: deadlineList[index][1] as bool,
              onChanged: (value) => checkBoxChanged(value, index),
              course: deadlineList[index][2] as String,
              daysLeft: deadlineList[index][2] as String,
            );
          },
        ),
      ),
    );
  }
}
