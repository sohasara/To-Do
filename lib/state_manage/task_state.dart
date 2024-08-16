// ignore_for_file: unnecessary_null_comparison

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
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
      final taskk = Tasks(task: task);
      _box.add(taskk);
      state = [...state, taskk];
    }
  }
}
