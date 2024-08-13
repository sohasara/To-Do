import 'package:flutter/material.dart';

class ViewTask extends StatelessWidget {
  final String text;
  const ViewTask({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
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
            onChanged: (value) {},
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
