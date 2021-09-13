import 'package:flutter/material.dart';

import '../constants.dart';

class TaskTile extends StatelessWidget {
  final String? taskTitle;
  final bool? isChecked;
  final Function(bool?)? checkBoxCallback;

  TaskTile({this.taskTitle, this.isChecked, this.checkBoxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle!,
        style: isChecked!
            ? kChecklistTextStyle.copyWith(
                decoration: TextDecoration.lineThrough)
            : kChecklistTextStyle,
      ),
      trailing: Checkbox(
        activeColor: Colors.green,
        value: isChecked,
        onChanged: checkBoxCallback!,
      ),
    );
  }
}


