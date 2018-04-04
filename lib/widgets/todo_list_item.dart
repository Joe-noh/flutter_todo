import 'package:flutter/material.dart';

class TodoListItem extends StatelessWidget {
  final String title;

  TodoListItem({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new ListTile(
      leading: new Icon(Icons.check),
      title: new Text(
        this.title,
        style: new TextStyle(fontSize: 16.0)
      ),
      onTap: () {},
    );
  }
}