import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:studybuddy/components/custom_appbar.dart';
import 'package:studybuddy/components/nav_bar.dart';
import 'package:studybuddy/createdeadline/create_deadline_model.dart';
import 'package:studybuddy/createdeadline/create_deadline_provider.dart';
import 'package:studybuddy/deadline/widget/background_widget.dart';



/// A StatefulWidget that creates a deadline.
class CreateDeadline extends ConsumerWidget {

  final TextEditingController _taskDescriptionController = TextEditingController();

  /// Creates a deadline.
  CreateDeadline({super.key});


  /// A function that creates a new task.
  //final Function createNewTask;
  /// A function that adds a task.
  //final Function addTask;

  //@override
  //CreateDeadlineState createState() => CreateDeadlineState();



  /// A BoxDecoration for the container.
  BoxDecoration myBoxDecoration() {
    return BoxDecoration(
      color: Colors.white.withOpacity(0.8),
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.2),
          spreadRadius: 1,
          blurRadius: 5,
          offset: const Offset(0, 3),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final CreateDeadlineController controller =
    ref.read(createDeadlineControllerProvider);
    final CreateDeadlineModel model = ref.watch(createDeadlineModelProvider);


    return Scaffold(
      appBar: const CustomAppBar(title: 'Deadline erstellen'),
      body: Stack(
        children: [
          Positioned.fill(
            child: GradientBackground(child: Container()),
          ),
          Positioned(
            top: 30,
            left: 20,
            child: Center(
              child: Container(
                width: 356,
                height: 150,
                decoration: myBoxDecoration(),
                child: TextField(
                  controller: _taskDescriptionController,
                  maxLines: null,
                  keyboardType: TextInputType.multiline,
                  decoration: const InputDecoration(
                    hintText: 'Aufgabe',
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 5,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 205,
            left: 20,
            child: Center(
              child: Container(
                width: 356,
                height: 100,
                decoration: myBoxDecoration(),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 1, top: 5),
                    ),
                    SizedBox(
                      width: 300,
                      height: 60,
                      child: CupertinoDatePicker(
                        mode: CupertinoDatePickerMode.date,
                        initialDateTime: DateTime.now(),
                        onDateTimeChanged: (DateTime newDateTime) {
                          controller.selectedDate = newDateTime;
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 345,
            left: 20,
            child: Center(
              child: Container(
                width: 356,
                height: 100,
                decoration: myBoxDecoration(),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 1, top: 5),
                      child: Text(
                        'Ungefährer Zeitaufwand: ',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    Align(
                      alignment: const Alignment(-0.8, 0),
                      child: SizedBox(
                        width: 75,
                        child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: 'Stunden',
                            fillColor: const Color.fromRGBO(217, 217,
                              2517, 100,),
                            filled: true,
                            contentPadding: const EdgeInsets.only(left: 5),
                            border: InputBorder.none,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 475,
            left: 20,
            child: Center(
              child: Container(
                width: 356,
                height: 150,
                decoration: myBoxDecoration(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'In welchem Rythmus möchtest du die aufgabe abschließen?',
                      style: TextStyle(fontSize: 16),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.remove),
                          onPressed: controller.decreaseInterval,
                        ),
                        Text(controller.currentValue.toString()),
                        IconButton(
                          icon: const Icon(Icons.add),
                          onPressed: controller.increaseInterval,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: NavBar(onTabChange: (int) {  },),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Save');
          controller.saveTaskDetails( _taskDescriptionController.text, controller.selectedDate, 2, 2);
          context.go('/');
          },
        child: const Icon(Icons.save),
      ),
    );
  }
}

/// A StatefulWidget that creates a deadline.
abstract class CreateDeadlineController {
  DateTime get selectedDate;

  set selectedDate(DateTime selectedDate) {}

  /// Increases the interval.
  void increaseInterval();
  /// Decreases the interval.
  void decreaseInterval();
  /// Returns the current value.
  int get currentValue;
  /// Adds a detail.
  void addDetail(int rhythm);
  /// Saves the task details.
  saveTaskDetails(String taskDescription, DateTime date, int time, int rhythm);
}
