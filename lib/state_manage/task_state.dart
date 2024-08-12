import 'package:flutter_riverpod/flutter_riverpod.dart';

class TaskState {
  final String task;

  TaskState({required this.task});
}

class TaskNotifier extends StateNotifier {
  TaskNotifier(super.state);
}
