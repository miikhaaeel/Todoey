import 'package:flutter/material.dart';

import '../constants.dart';

class TaskTile extends StatefulWidget {
  final String? taskTitle;

  TaskTile({this.taskTitle});

  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        widget.taskTitle as String,
        style: kChecklistTextStyle,
      ),
      trailing: TaskCheckBox(
        checkBoxState: isChecked,
      ),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  final bool? checkBoxState;

  TaskCheckBox({this.checkBoxState});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.green,
      value: checkBoxState,
      onChanged: (value) {
        // setState(() {
        //   isChecked = value!;
        // });
      },
    );
  }
}
