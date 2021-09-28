import 'package:flutter/material.dart';

import '../constants.dart';

class TaskTile extends StatelessWidget {
  final String? taskTitle;
  final bool? isChecked;
  final Function(bool?)? checkBoxCallback;
  final Function()? longPressCallback;

  TaskTile(
      {this.taskTitle,
      this.isChecked,
      this.checkBoxCallback,
      this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
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
