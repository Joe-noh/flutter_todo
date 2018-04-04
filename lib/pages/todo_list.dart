import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_todo/widgets/todo_list_item.dart';
import 'package:flutter_todo/entities/task.dart';

class TodoListPage extends StatefulWidget {
  TodoListPage({Key key}) : super(key: key);

  @override
  TodoListPageState createState() => new TodoListPageState();
}

class TodoListPageState extends State<TodoListPage> {
  List<Task> tasks = new List<Task>();

  @override
  void initState() {
    super.initState();

    setState(() {
      this.tasks = List.generate(5, (index) {
        return new Task('Task ${index+1}');
      });
    });
  }

  void _appendTask() {
    setState(() {
      this.tasks.add(new Task('Hey'));
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('Tasks')),
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          final task = this.tasks.elementAt(index);

          return new Dismissible(
            key: new Key(task.id),
            child: new TodoListItem(title: task.title),
            onDismissed: (direction) {
              setState(() {
                this.tasks.removeAt(index);
              });
            }
          );
        },
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _appendTask,
        tooltip: 'New Task',
        child: new Icon(Icons.add)
      ),
    );
  }
}
