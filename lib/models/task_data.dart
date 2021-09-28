import 'package:flutter/foundation.dart';

import 'package:todoey/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Eat food'),
    Task(name: 'Drink wine'),
    Task(name: 'Sleep'),
    Task(name: 'wake'),
  ];

  int get taskCount {
    return tasks.length;
  }
}
