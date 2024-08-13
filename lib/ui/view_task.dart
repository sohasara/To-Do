import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:to_do/state_manage/task_provider.dart';

class ViewTask extends ConsumerWidget {
  final String text;
  final bool? value;
  final int index;
  const ViewTask({
    super.key,
    required this.text,
    required this.index,
    this.value,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 75,
      width: 250,
      padding: const EdgeInsets.only(
        left: 10,
      ),
      decoration: const BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.all(
          Radius.circular(18),
        ),
      ),
      child: Row(
        children: [
          Checkbox(
            value: true,
            onChanged: (value) {
              ref.read(taskProvider.notifier).toggleTask(index);
            },
          ),
          Text(
            text,
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
