import 'package:flutter/material.dart';

class PlanAddPage extends StatelessWidget{

  GlobalKey<FormState> _addPlanKey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("添加计划"),centerTitle: true,),
      backgroundColor: Colors.grey[200],
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: Form(
          key: _addPlanKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: new InputDecoration(
                  labelText: "计划名称"
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "计划备注"
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}