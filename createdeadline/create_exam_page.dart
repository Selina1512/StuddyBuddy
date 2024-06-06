import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studybuddy/deadline/background_widget.dart';
import 'package:studybuddy/deadline/custom_appbar.dart';

///
class CreateExamDeadline extends StatefulWidget {

  ///
  const CreateExamDeadline({super.key});

  @override
  CreateExamDeadlineState createState() => CreateExamDeadlineState();
}

///
class CreateExamDeadlineState extends State<CreateExamDeadline> {
  int _currentValue = 3;

  ///
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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Create Deadline'),
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
                child: const TextField(
                  maxLines: null,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    hintText: 'Klausur Themen: ',
                    contentPadding: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 5,),
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
                      padding: EdgeInsets.only(left:1, top: 5),
                      child: Text(
                        'Klausur Termin: ', style: TextStyle(fontSize: 16),
                      ),
                    ),
                    SizedBox(
                      width: 300,
                      height: 60,
                      child: CupertinoDatePicker(
                        mode: CupertinoDatePickerMode.date,
                        initialDateTime: DateTime.now(),
                        onDateTimeChanged: (DateTime newDateTime) {
                          // Do something when date is changed
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
                      padding: EdgeInsets.only(left:1, top: 5),
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
                      'In welchem Rythmus möchtest du lernen abschließen?',
                      style: TextStyle(fontSize: 16),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 20, // Geben Sie den gewünschten Abstand an
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.remove),
                          onPressed: () {
                            setState(() {
                              if (_currentValue > 1) {
                                _currentValue--;
                              }
                            });
                          },
                        ),
                        Text('$_currentValue'),
                        IconButton(
                          icon: const Icon(Icons.add),
                          onPressed: () {
                            setState(() {
                              _currentValue++;
                            });
                          },
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
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Add your onPressed code here!
          },
          child: const Icon(Icons.save),
        ),
    );
  }
}
