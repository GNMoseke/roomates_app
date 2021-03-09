import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:roomates_app/model/task.dart';
import 'package:roomates_app/view/strikethrough.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      //TODO: Change me
      title: "Roomates App Starter",
      home: App(),
    ),
  );
}

class App extends StatefulWidget {
  @override
  AppState createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  List<Task> tasks = [Task("Test 1"), Task("Test 2"), Task("Test 3")];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Start"),
      ),
      body: ReorderableListView(
        children: <Widget>[
          for (final task in tasks)
            CheckboxListTile(
              title: StrikeThrough(task),
              value: task.isComplete(),
              onChanged: (bool newVal) {
                setState(() {
                  task.setComplete(newVal);
                });
              },
              key: Key(task.getName()),
            ),
        ],
        onReorder: (int oldIndex, int newIndex) {
          //function to handle reorder
          setState(() {
            if (oldIndex < newIndex) {
              newIndex--;
            }
            var getReplacedWidget = tasks.removeAt(oldIndex);
            tasks.insert(newIndex, getReplacedWidget);
          });
        },
      ),
    );
  }
}
