// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:hive_flutter/hive_flutter.dart';
part 'data_class.g.dart';

@HiveType(typeId: 0)
class Tasks {
  @HiveField(0)
  final String task;
  @HiveField(1)
  final String time;
  Tasks({
    required this.task,
    required this.time,
  });
}
