import 'package:flutter/material.dart';
import 'component/TodoGridView.dart';
import 'component/TodoListView.dart';

class TodoView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("待办事务"), centerTitle: true,),
      body: Container(
        color: Colors.grey[200],
//        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            TodoGridView(),
            TodoListView(),
          ],
        ),
      ),
    );
  }
}