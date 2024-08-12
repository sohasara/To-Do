import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:to_do/state_manage/task_state.dart';

final taskProvider =
    StateNotifierProvider<TaskNotifier, List<TaskState>>((ref) {
  return TaskNotifier([]);
});
