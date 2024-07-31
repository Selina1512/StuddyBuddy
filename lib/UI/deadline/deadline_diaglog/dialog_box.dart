// File: lib/UI/deadline/deadline_diaglog/dialog_box.dart
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:studybuddy/UI/deadline/deadline_provider.dart';
import 'package:studybuddy/UI/deadline/deadline_view.dart';
import 'package:studybuddy/UI/deadline/widget/buttons_design.dart';
import 'package:studybuddy/navigation_service/navigation_routes.dart';

class DialogBox extends ConsumerStatefulWidget {
  const DialogBox({
    required this.textController, required this.onSubmitted, super.key,
  });

  final TextEditingController textController;
  // ignore: inference_failure_on_function_return_type
  final Function(String) onSubmitted;

  @override
  DialogBoxState createState() => DialogBoxState();
}

class DialogBoxState extends ConsumerState<DialogBox> {
  bool _isAbgabeChecked = false;
  bool _isKlausurChecked = false;

  String taskType = 'Abgabe';

  @override
  Widget build(BuildContext context) {
    final DeadlineController controller = ref.read(deadlineControllerProvider);

    return Dialog(
      backgroundColor: Colors.transparent,
      child: Stack(
        children: [
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
          AlertDialog(
            backgroundColor: Colors.white,
            content: SizedBox(
              height: 264,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.close),
                          onPressed: () {
                            Navigator.pop(context);
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
                          key: const Key('abgabeCheckbox'),
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
                          key: const Key('klausurCheckbox'),
                          value: _isKlausurChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              _isKlausurChecked = value!;
                              if(_isKlausurChecked) {
                                _isAbgabeChecked = false;
                                taskType = 'Klausur';
                              } else {
                                taskType = 'Abgabe';
                              }
                            });
                          },
                        ),
                        const Text('Klausur'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Buttons(text: 'Erstellen', onPressed: () async {
                          if(_isAbgabeChecked) {
                            controller.addTask(false, widget.textController.text);
                            context.go(Navigationroutes.createDeadline);
                          } else if(_isKlausurChecked) {
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
          ),
        ],
      ),
    );
  }
}