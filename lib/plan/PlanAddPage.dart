import 'package:flutter/material.dart';
//import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
//import 'dart:async';

import 'package:intl/intl.dart';
import 'package:life_front/plan/model/PlanModel.dart';
import 'package:life_front/plan/service/PlanService.dart';

class PlanAddPage extends StatefulWidget {
  @override
  State createState() {
    return PlanAddPageState();
  }
}

class PlanAddPageState extends State<PlanAddPage> {
  GlobalKey<FormState> _addPlanKey = new GlobalKey<FormState>();
  final DateFormat dateFormat = DateFormat("yyyy-MM-dd");

  String title ;
  String comment;
  DateTime startDay = DateTime.now();
  DateTime endDay = DateTime.now().add(Duration(days: 1));

  _selectStartDate() async {
    final DateTime date = await showDatePicker(
        context: context,
        initialDate: endDay,
        firstDate: endDay,
        lastDate: startDay.add(Duration(days: 1000)));
    if (null == date) {
      return;
    }
    setState(() {
      if (startDay.isAfter(endDay)) {
        endDay = date.add(Duration(days: 1));
      }
      startDay = date;
    });
  }

  _selectEndDate() async {
    final DateTime date = await showDatePicker(
        context: context,
        initialDate: startDay,
        firstDate: startDay,
        lastDate: startDay.add(Duration(days: 1000)));
    if (null == date) {
      return;
    }
    setState(() {
      endDay = date;
    });
  }

  savePlan(){
    _addPlanKey.currentState.save();
    _addPlanKey.currentState.validate();
    PlanService planService = PlanService();
    PlanModel planModel = PlanModel(this.title,this.comment,this.startDay,this.endDay);
    planService.planAdd(planModel);

  }
  cancelPlan(BuildContext context){
    Navigator.maybePop(context);
  }

  //-
  String valComment(value){
    print("注释:"+value);
    if(null!=value){
      return "请输入内容描述";
    }
  }
  String valTitle(value){
    print("标题:"+value);
    if(null!=value){
      return "请输入标题";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("添加计划"),
        centerTitle: true,
      ),
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        padding: EdgeInsets.all(8.0),
        child: Form(
          key: _addPlanKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: new InputDecoration(labelText: "计划名称"),
                onSaved: (value)=> this.title = value,
                validator: valTitle,
              ),
              TextFormField(
                maxLines: 5,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "计划备注",
                  hintText: "",
                ),
                onSaved: (value)=> this.comment = value,
                validator: valComment,
              ),
              InkWell(
                onTap: _selectStartDate,
                child: Container(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text("开始时间:"),
                      Text(dateFormat.format(startDay),style: TextStyle(),),
                      Icon(Icons.date_range,size: 20,),
                  ],
                )),
              ),
              Divider(color: Colors.grey,height: 8,),
              InkWell(
                onTap: _selectEndDate,
                child: Container(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text("结束时间:"),
                        Text(dateFormat.format(endDay),),
                        Icon(Icons.date_range,size: 20,),
                      ],
                    )),
              ),
              RaisedButton(
                child: Text("保存计划"),
                color: Colors.blueAccent,
//                highlightColor: Colors.amber,
                textColor: Colors.white,
                splashColor: Colors.black,
                onPressed: savePlan,
              ),
              RaisedButton(
                child: Text("放弃计划"),
                color: Colors.red,
//                highlightColor: Colors.amber,
                textColor: Colors.white,
                splashColor: Colors.black,
                onPressed: (){
                  Navigator.maybePop(context);
                }
              ),
            ],
          ),
        ),
      ),
    );
  }
}
