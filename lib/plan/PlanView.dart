import 'package:flutter/material.dart';
import 'package:life_front/plan/PlanAddPage.dart';
import 'package:life_front/plan/component/PlanType.dart';
import 'package:life_front/plan/model/PlanModel.dart';
class PlanView extends StatefulWidget {

  PlanViewState createState ()=> PlanViewState();
}

class PlanViewState extends State<PlanView>{

  List<PlanModel> planList = <PlanModel>[
    new PlanModel("工作", "my work", DateTime.now(), DateTime(2021, 12, 0, 0, 0)),
    new PlanModel("生活", "my work", DateTime.now(), DateTime(2021, 12, 0, 0, 0)),
    new PlanModel("学习", "my work", DateTime.now(), DateTime(2021, 12, 0, 0, 0)),
  ];


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
      body: ListView.separated(
        itemCount: planList.length,
        itemBuilder: (BuildContext context,int index){
          return PlanTypeWidget(planList[index]);
        },
        separatorBuilder: (BuildContext context,int index){
          return index % 2 == 0
              ? Divider(color: Colors.blue)
              : Divider(color: Colors.red);
        },
      ),
    );
  }
}