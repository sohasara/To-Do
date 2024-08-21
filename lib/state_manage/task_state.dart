// ignore_for_file: unnecessary_null_comparison

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:intl/intl.dart';
import 'package:to_do/data/data_class.dart';

class TaskNotifier extends StateNotifier<List<Tasks>> {
  final Box<Tasks>? _box;
  TaskNotifier(this._box) : super([]) {
    loads();
  }

  void loads() {
    if (_box != null) {
      state = _box.values.toList();
    }
  }

  void addTask(String task) {
    if (_box == null) {
      return;
    } else {
      final DateTime date = DateTime.now();
      String formatedDate = DateFormat('hh:mm ,dd-MM-yyyy').format(date);
      final taskk = Tasks(task: task, time: formatedDate);
      _box.add(taskk);
      state = [...state, taskk];
    }
  }

  void deleteTask(int index) {
    if (_box == null) {
      return;
    } else {
      _box.deleteAt(index);
      state = List.from(state)..removeAt(index);
    }
  }
}
