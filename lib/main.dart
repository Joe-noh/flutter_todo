import 'package:flutter/material.dart';
import 'package:flutter_todo/pages/todo_list.dart';

void main() => runApp(new TodoApp());

class TodoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> tasks = List.generate(5, (index) {
      return 'Task ${index+1}';
    });

    return new MaterialApp(
      title: 'Todo App',
      theme: new ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: new TodoListPage(tasks: tasks),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              'You have pushed the button this many times:',
            ),
            new Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ),
    );
  }
}
