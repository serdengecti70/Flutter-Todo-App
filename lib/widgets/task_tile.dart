import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  TaskTile(
      {this.text, this.isChecked, this.taskOnchanged, this.taskOnLongpressed});

  final String text;
  final bool isChecked;
  final Function taskOnchanged;
  final Function taskOnLongpressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: taskOnLongpressed,
      title: Text(
        text,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.redAccent,
        value: isChecked,
        onChanged: taskOnchanged,
      ),
    );
  }
}
