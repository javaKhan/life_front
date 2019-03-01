import 'package:flutter/material.dart';
import 'package:life_front/plan/PlanAddPage.dart';
class PlanView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("事务计划"), centerTitle: true,leading: Icon(Icons.add_to_queue),actions: <Widget>[
//        Icon(Icons.ac_unit),
//        Icon(Icons.accessibility)
        IconButton(icon: Icon(Icons.add_box,),color: Colors.white,onPressed: (){
          Navigator.push(context,MaterialPageRoute(builder: (BuildContext  context){
            return  PlanAddPage();
          }));
        },),
      ],),
    );
  }
}