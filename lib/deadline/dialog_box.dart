import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:studybuddy/deadline/buttons_design.dart';
import 'package:studybuddy/createdeadline/create_deadline_page.dart';

import 'package:studybuddy/createdeadline/create_exam_page.dart';

/// A StatefulWidget that provides a dialog box.
class DialogBox extends StatefulWidget {

  /// Creates a dialog box.
  const DialogBox({
    super.key,
    required this.controller,
    required this.addTask, required this.createNewTask,
  });

  /// The text controller for the dialog box.
  final TextEditingController controller;
  /// The function that adds a task.
  final void Function(String, bool) addTask;
  /// The function that creates a new task.
  final Function createNewTask;


  @override
  DialogBoxState createState() => DialogBoxState();
}

/// A State of DialogBox.
class DialogBoxState extends State<DialogBox> {
  bool _isAbgabeChecked = false;
  bool _isKlausurChecked = false;

  @override
  Widget build(BuildContext context) {
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
                    controller: widget.controller,
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
                        widget.addTask(widget.controller.text,
                            _isKlausurChecked,);
                        if(_isAbgabeChecked) {
                          Navigator.push(
                            context,
                            MaterialPageRoute<void>(
                                builder: (context) => CreateDeadline(
                                  createNewTask: widget.createNewTask,
                                    addTask: widget.addTask,),
                            ),
                          );
                        } else if(_isKlausurChecked) {
                          Navigator.push(
                            context,
                            MaterialPageRoute<void>(
                                builder: (context) => const CreateExamDeadline()
                            ,),
                          );
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
