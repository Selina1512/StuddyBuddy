import 'dart:async';

import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:studybuddy/deadline/services/deadline_extra.dart';

import 'deadline.dart';

part 'deadline_extra_impl.g.dart';

@Riverpod(keepAlive: true)
DeadlineExtraImpl deadlineExtra(
    final DeadlineExtraRef ref,
    ) =>
    DeadlineExtraImpl();

class DeadlineExtraImpl extends DeadlineExtra {
  List<Deadline> _deadlines = [];
  final _deadlinesController = StreamController<List<Deadline>>();

  void _updateStream() {
    List<Deadline> deadlines = _deadlines;
    _deadlinesController.add(deadlines);
  }

  @override
  Stream<List<Deadline>> deadlines() {
    _updateStream();
    return _deadlinesController.stream;
  }

  @override
  void addDeadline(Deadline deadline) {
    _deadlines.add(deadline);
    _updateStream();
  }
}