import 'package:flutter/material.dart';

class TodoGridView extends StatefulWidget {
  @override
  State createState() {
    return TodoGridViewState();
  }
}

class TodoGridViewState extends State<TodoGridView> {
  int allTodoCount = 0,
      endTodoCount = 0,
      runTodoCount = 0;

  @override
  void initState() {}

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent,
      child:
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            color: Colors.amberAccent,
            child:
            Column(
              children: <Widget>[
                Text("待办"),
                Text(runTodoCount.toString()),
              ],
            ),
          ),
          Column(
            children: <Widget>[
              Text("完成"),
              Text(endTodoCount.toString()),
            ],
          ),
          Column(
            children: <Widget>[
              Text("总计"),
              Text(allTodoCount.toString()),
            ],
          ),
        ],
      ),
    );
  }
}
