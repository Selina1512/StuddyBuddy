import 'dart:core';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:studybuddy/createdeadline/create_deadline_model.dart';
import 'package:studybuddy/createdeadline/create_deadline_view.dart';
import 'package:studybuddy/createdeadline/services/create_deadline_navigation.dart';

import '../database/task_details.dart';

part 'create_deadline_controller.g.dart';

/// CreateDeadlineController
@riverpod
class CreateDeadlineDefaultController extends _$CreateDeadlineDefaultController
    implements CreateDeadlineController {

  DateTime _selectedDate = DateTime.now();

  @override
  DateTime get selectedDate => _selectedDate;

  @override
  CreateDeadlineModel build({
    required CreateDeadlineNavigationService navigationService,
    //required List<TaskDetails> details,
  }) {
    return CreateDeadlineModel(
      currentValue: 1,
      details: <TaskDetail> [],
    );
  }

  int _currentValue = 2;
  @override
  void decreaseInterval() {
    //TODO: implement decreaseInterval
  }

  @override
  void increaseInterval() {
    //TODO: implement increaseInterval
  }

  @override
  int get currentValue => _currentValue;


  @override
  saveTaskDetails(String taskDescription, DateTime date, int time, int rhythm) async {
    try {
      DateFormat dateWithoutTime = DateFormat('dd.MM.yyyy');
      String dateString = dateWithoutTime.toString().substring(0, 10); // Konvertiert das Datum in einen String und behält nur das Datum bei
      final Box<TaskDetails> taskDetailsBox = await Hive.openBox<TaskDetails>('taskDetails');
      final taskDetails = TaskDetails(
        taskDescription: taskDescription,
        date: dateString,
        time: time,
        rhythm: rhythm,
      );
      await taskDetailsBox.put(taskDetailsBox.length, taskDetails);
      print(taskDetailsBox.length);
    } catch (e) {
      print('Error saving task details: $e');
    }
  }

  @override
  void addDetail(int rhythm) {
    // TODO: implement addDetail
  }

  @override
  set selectedDate(DateTime date) {
    _selectedDate = date;
  }
}