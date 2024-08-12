import 'package:flutter/material.dart';

class ViewTask extends StatelessWidget {
  const ViewTask({super.key});

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
    );
  }
}
