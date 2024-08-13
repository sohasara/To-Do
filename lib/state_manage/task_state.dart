import 'package:flutter_riverpod/flutter_riverpod.dart';

class TaskState {
  final String task;
  final bool value;

  TaskState({required this.task, required this.value});
}

class TaskNotifier extends StateNotifier<List<TaskState>> {
  TaskNotifier(super.state);

  void addTask(String task) {
    state = [...state, TaskState(task: task, value: false)];
  }

  void toggleTask(int index) {
    state = [
      for (int i = 0; i < state.length; i++)
        if (i == index)
          TaskState(task: state[i].task, value: !state[i].value)
        else
          state[i]
    ];
  }
}
