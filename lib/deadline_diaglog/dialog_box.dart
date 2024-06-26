import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:studybuddy/database/boxTask.dart';
import 'package:studybuddy/deadline/deadline_model.dart';
import 'package:studybuddy/deadline/deadline_provider.dart';
import 'package:studybuddy/deadline/deadline_view.dart';
import 'package:studybuddy/deadline/widget/buttons_design.dart';
import 'package:studybuddy/navigation_service/NavigationRoutes.dart';

/// A StatefulWidget that provides a dialog box.
class DialogBox extends ConsumerStatefulWidget {

  /// Creates a dialog box.
  const DialogBox({
    super.key,
    required this.textController,
    required this.onSubmitted,
    //required this.addTask, required this.createNewTask,
  });

  /// The text controller for the dialog box.
  final TextEditingController textController;
  final Function(String) onSubmitted;
  /// The function that adds a task.
  //final void Function(String, bool) addTask;
  /// The function that creates a new task.
  //final Function createNewTask;


  @override
  DialogBoxState createState() => DialogBoxState();
}

/// A State of DialogBox.
class DialogBoxState extends ConsumerState<DialogBox> {
  bool _isAbgabeChecked = false;
  bool _isKlausurChecked = false;

  @override
  Widget build(BuildContext context) {
    final DeadlineModel model = ref.watch(deadlineModelProvider);
    final DeadlineController controller = ref.read(deadlineControllerProvider);

    return Dialog(
      backgroundColor: Colors.transparent,
      child: Stack(
        children: [
          // Dieser Container enthält den unscharfen Hintergrund
          DecoratedBox(
            decoration: const BoxDecoration(
              color: Colors.transparent,
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
              child: Container(
                color: Colors.transparent,
              ),
            ),
          ),
          // Das ist der eigentliche Dialog
          AlertDialog(
            backgroundColor: Colors.white,
            content: SizedBox(
              height: 264,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.close),
                        onPressed: () {
                          Navigator.pop(context);  // Schließt den Dialog
                        },
                      ),
                    ],
                  ),
                  TextField(
                    controller: widget.textController,
                    onSubmitted: widget.onSubmitted,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      hintText: 'Name',
                    ),
                  ),
                  const SizedBox(height: 8,),
                  Row(
                    children: [
                      Checkbox(
                        value: _isAbgabeChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            _isAbgabeChecked = value!;
                            if (_isAbgabeChecked) {
                              _isKlausurChecked = false;
                            }
                          });
                        },
                      ),
                      const Text('Abgabe'),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: _isKlausurChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            _isKlausurChecked = value!;
                            if(_isKlausurChecked) {
                              _isAbgabeChecked = false;
                            }
                          });
                        },
                      ),
                      const Text('Klausur'),
                    ],
                  ),
                  //Button to close dialog and to create a task
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      //create button
                      Buttons(text: 'Erstellen', onPressed: () {
                        if(_isAbgabeChecked) {
                          //task.taskName = widget.textController.text; // Update taskName here
                          controller.addTask(false, widget.textController.text);
                          context.go(Navigationroutes.createDeadline);
                          boxTask.put('key', Task(taskType: 'taskType', taskCompleted: false, course: "course", daysLeft: '2'));
                        } else if(_isKlausurChecked) {
                          //controller.taskName = widget.textController.text; // Update taskName here
                          controller.addTask(true, widget.textController.text);
                          context.go(Navigationroutes.createDeadline);
                        }

                      }, w: 100,),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
