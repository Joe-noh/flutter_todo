import 'package:flutter/material.dart';

class TodoListPage extends StatefulWidget {
  TodoListPage({Key key}) : super(key: key);

  @override
  TodoListPageState createState() => new TodoListPageState();
}

class TodoListPageState extends State<TodoListPage> {
  List<String> tasks = new List<String>();

  @override
  void initState() {
    super.initState();

    setState(() {
      this.tasks = List.generate(5, (index) {
        return 'Task ${index+1}';
      });
    });
  }

  void _appendTask() {
    setState(() {
      this.tasks.add('Hey');
    });
  }

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
        onPressed: _appendTask,
        tooltip: 'New Task',
        child: new Icon(Icons.add)
      ),
    );
  }
}
