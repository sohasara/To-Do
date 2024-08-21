import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:to_do/state_manage/task_provider.dart';

class ViewTask extends ConsumerWidget {
  final String text;
  final int index;
  final String time;

  const ViewTask({
    super.key,
    required this.text,
    required this.index,
    required this.time,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 85,
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
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Text(
                text,
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
              Text(
                time,
                style: const TextStyle(
                  fontSize: 15,
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 60,
          ),
          IconButton(
            onPressed: () {
              ref.read(taskNotifierPro.notifier).deleteTask(index);
            },
            icon: const Icon(
              Icons.delete,
              color: Colors.red,
            ),
          )
        ],
      ),
    );
  }
}
