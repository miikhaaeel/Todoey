import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';

import 'task_tile.dart';

class TaskList extends StatefulWidget {
  @override
  _TaskListState createState() => _TaskListState();
}

List<Task> tasks = [
  Task(name: 'Eat food'),
  Task(name: 'Drink wine'),
  Task(name: 'Sleep'),
  Task(name: 'wake'),
];

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.only(top: 30, left: 20, right: 20),
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        return TaskTile(
          isChecked: tasks[index].isDone,
          taskTitle: tasks[index].name,
          checkBoxCallback: (checkBoxstate) {
            setState(() {
              tasks[index].toggleDone();
            });
          },
        );
      },
    );
  }
}
