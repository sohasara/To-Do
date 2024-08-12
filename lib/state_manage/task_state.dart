import 'package:flutter_riverpod/flutter_riverpod.dart';

class TaskState {
  final String task;

  TaskState({required this.task});
}

class TaskNotifier extends StateNotifier<List<TaskState>> {
  TaskNotifier(super.state);
  void addTask(String task) {
    state = [...state, TaskState(task: task)];
  }
}
