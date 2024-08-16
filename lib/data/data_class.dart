// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:hive_flutter/hive_flutter.dart';

@HiveType(typeId: 0)
class Tasks {
  @HiveField(0)
  final String task;
  Tasks({
    required this.task,
  });
}
