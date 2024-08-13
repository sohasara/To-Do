import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:to_do/state_manage/task_provider.dart';
import 'package:to_do/ui/view_task.dart';

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final task = ref.watch(taskProvider);
    TextEditingController taskController = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.yellow,
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                backgroundColor: Colors.yellow,
                title: const Text('Enter your tasks'),
                content: TextField(
                  controller: taskController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text(
                      'Cancel',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      ref
                          .read(taskProvider.notifier)
                          .addTask(taskController.text);
                      taskController.clear();
                      Navigator.pop(context);
                    },
                    child: const Text(
                      'Save',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              );
            },
          );
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'TO DO APP',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.yellow,
      ),
      body: ListView.builder(
        itemCount: task.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(
              top: 20.0,
              left: 20,
              right: 20,
            ),
            child: ViewTask(
              text: task[index].task,
              value: task[index].value,
              index: index,
            ),
          );
        },
      ),
    );
  }
}
