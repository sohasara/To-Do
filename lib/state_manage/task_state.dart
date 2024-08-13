import 'package:flutter_riverpod/flutter_riverpod.dart';

class TaskState {
  final String task;
  final bool value;

  TaskState({required this.task, required this.value});
}

class TaskNotifier extends StateNotifier<List<TaskState>> {
  TaskNotifier(super.state);
  void addTask(String task, bool value) {
    state = [...state, TaskState(task: task, value: false)];
  }

  void onChangedtoggle(int index) {
    state = [
      for (int i = 0; i < state.length; i++)
        if (i == index)
          TaskState(task: state[i].task, value: !state[i].value)
        else
          state[i]
    ];
  }
}
