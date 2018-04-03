import 'package:flutter/material.dart';

class TodoListPage extends StatelessWidget {
  final List<String> tasks;

  TodoListPage({Key key, this.tasks}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('Tasks')),
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return new Text(tasks.elementAt(index));
        },
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: () {
          debugPrint('print');
        },
        tooltip: 'New Task',
        child: new Icon(Icons.add)
      ),
    );
  }
}
