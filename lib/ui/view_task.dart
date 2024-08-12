import 'package:flutter/material.dart';

class ViewTask extends StatelessWidget {
  final String text;
  const ViewTask({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      width: 250,
      decoration: const BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.all(
          Radius.circular(18),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 20.0,
          left: 20,
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
