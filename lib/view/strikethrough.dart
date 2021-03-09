import 'package:flutter/material.dart';
import 'package:roomates_app/model/task.dart';

class StrikeThrough extends StatelessWidget {
  final Task task;
  StrikeThrough(this.task) : super();

  Widget _strikewidget() {
    if (!task.isComplete()) {
      return Text(
        task.getName(),
        style: TextStyle(
          fontSize: 22.0,
        ),
      );
    }
    return Text(
      task.getName(),
      style: TextStyle(
        fontSize: 22.0,
        decoration: TextDecoration.lineThrough,
        color: Colors.redAccent,
        fontStyle: FontStyle.italic,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _strikewidget();
  }
}
