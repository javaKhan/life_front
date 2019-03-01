import 'package:flutter/material.dart';

class TodoGridView extends StatefulWidget {
  @override
  State createState() {
    return TodoGridViewState();
  }
}

class TodoGridViewState extends State<TodoGridView> {
  int allTodoCount,
      endTodoCount,
      runTodoCount = 0;

  @override
  void initState() {}

  @override
  Widget build(BuildContext context) {
    return Flex(direction: Axis.horizontal,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        InkWell(child: Card(child: Text("1111111"),)),
        InkWell(child: Text("1111111")),
        InkWell(child: Text("1111111")),
      ],);
  }
}
