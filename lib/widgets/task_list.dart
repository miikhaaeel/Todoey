import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';

import 'task_tile.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          padding: EdgeInsets.only(top: 30, left: 20, right: 20),
          itemCount: taskData.tasks.length,
          itemBuilder: (context, index) {
            return TaskTile(
              isChecked: taskData.tasks[index].isDone,
              // Provider.of<TaskData>(context).tasks[index].isDone,
              taskTitle: taskData.tasks[index].name,
              checkBoxCallback: (checkBoxstate) {
                // setState(() {
                //   widget.tasks![index].toggleDone();
                // });
              },
            );
          },
        );
      },
    );
  }
}
