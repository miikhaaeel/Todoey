import 'package:flutter/material.dart';

import '../constants.dart';

class TaskTile extends StatelessWidget {
  final String? taskTitle;

  TaskTile({this.taskTitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle as String,
        style: kChecklistTextStyle,
      ),
      trailing: Checkbox(
        onChanged: (value) => true,
        value: false,
      ),
    );
  }
}
