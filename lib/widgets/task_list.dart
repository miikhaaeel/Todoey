import 'package:flutter/material.dart';

import 'task_tile.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      children: [
        TaskTile(
          taskTitle: 'Eat Food',
        ),
        TaskTile(
          taskTitle: 'Drink water',
        ),
      ],
    );
  }
}
