import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:studybuddy/UI/createdeadline/create_deadline_model.dart';
import 'package:studybuddy/UI/createdeadline/create_deadline_provider.dart';
import 'package:studybuddy/UI/deadline/widget/background_widget.dart';
import 'package:studybuddy/commons/custom_appbar.dart';

class CreateDeadline extends ConsumerWidget {
  final List<String> daysOfWeek;
  final Map<String, bool> selectedDays;

  CreateDeadline({super.key})
      : daysOfWeek = [
          'Montag',
          'Dienstag',
          'Mittwoch',
          'Donnerstag',
          'Freitag',
          'Samstag',
          'Sonntag'
        ],
        selectedDays = {
          'Montag': false,
          'Dienstag': false,
          'Mittwoch': false,
          'Donnerstag': false,
          'Freitag': false,
          'Samstag': false,
          'Sonntag': false,
        };
  final TextEditingController _taskDescriptionController =
      TextEditingController();

  final TextEditingController _timeController = TextEditingController();

  BoxDecoration myBoxDecoration() {
    return BoxDecoration(
      color: Colors.white.withOpacity(0.8),
      borderRadius: BorderRadius.circular(15),
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
            right: 20,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Container(
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
          ),
          Positioned(
            top: 205,
            left: 20,
            right: 20,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Center(
                child: Container(
                  height: 100,
                  decoration: myBoxDecoration(),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 1, top: 5),
                      ),
                      SizedBox(
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
          ),
          Positioned(
            top: 345,
            left: 20,
            right: 20,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Center(
                child: Container(
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
                            controller: _timeController,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: 'Stunden',
                              fillColor: const Color.fromRGBO(
                                217,
                                217,
                                2517,
                                100,
                              ),
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
          ),
          Positioned(
              top: 475,
              left: 20,
              right: 20,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: Container(
                    height: 150,
                    decoration: myBoxDecoration(),
                    child: Container(
                      height: 150,
                      decoration: myBoxDecoration(),
                      child: Column(
                        children: [
                          const Text(
                            'An welchen Tagen möchtest du die Aufgabe abschließen?',
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.center,
                          ),
                          Expanded(
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  ...daysOfWeek.map((day) => InkWell(
                                        onTap: () {
                                          controller.toggleDay(day);
                                        },
                                        child: Container(
                                          padding: const EdgeInsets.all(8),
                                          child: Text(
                                            day,
                                            style: TextStyle(
                                              color: model.selectedDays[day]!
                                                  ? Colors.blue
                                                  : Colors.black,
                                            ),
                                          ),
                                        ),
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          int time;
          try {
            time = int.parse(_timeController.text);
          } catch (e) {
            time = 1;
          }          controller.saveTaskDetails(
            _taskDescriptionController.text,
            controller.selectedDate,
            time,
            selectedDays,
          );
          context.go('/');
        },
        child: const Icon(Icons.save),
      ),
    );
  }
}

abstract class CreateDeadlineController {
  DateTime get selectedDate;

  set selectedDate(DateTime selectedDate) {}

  void toggleDay(String day);

  void saveTaskDetails(
    String taskDescription,
    DateTime date,
    int time,
    Map<String, bool> selectedDaysMap,
  );
}
