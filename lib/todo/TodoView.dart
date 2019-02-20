
import 'package:flutter/material.dart';

class TodoView extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("待办事务"),centerTitle: true,),
      body: Container(
        color: Colors.grey[200],
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            GridView(),
            ListView(),
          ],
        ),
      ),
    );
  }
}