import 'package:flutter/material.dart';
import 'package:flutter_todo/pages/todo_list.dart';

void main() => runApp(new TodoApp());

class TodoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Todo App',
      theme: new ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: new TodoListPage(),
    );
  }
}
