import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:to_do/data/data_class.dart';
import 'package:to_do/state_manage/task_state.dart';

final taskProvider = FutureProvider<Box<Tasks>>((ref) async {
  return await Hive.openBox<Tasks>('taskBox');
});
final taskNotifierPro = StateNotifierProvider<TaskNotifier, List<Tasks>>((ref) {
  final box = ref.watch(taskProvider).when(
        data: (data) => data,
        error: (err, stack) => null,
        loading: () => null,
      );

  if (box != null) {
    return TaskNotifier(box);
  } else {
    return TaskNotifier(null);
  }
});
