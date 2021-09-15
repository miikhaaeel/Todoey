import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';

import 'task_tile.dart';

class TaskList extends StatefulWidget {
  final List<Task>? tasks;

  const TaskList({this.tasks});

  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.only(top: 30, left: 20, right: 20),
      itemCount: widget.tasks!.length,
      itemBuilder: (context, index) {
        return TaskTile(
          isChecked: widget.tasks![index].isDone,
          taskTitle: widget.tasks![index].name,
          checkBoxCallback: (checkBoxstate) {
            setState(() {
              widget.tasks![index].toggleDone();
            });
          },
        );
      },
    );
  }
}
