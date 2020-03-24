
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'model/PlanModel.dart';


class PlanTypeListPage extends StatefulWidget{
  final PlanModel planModel ;
  PlanTypeListPage(this.planModel);
  PlanTypeListPageState createState()=>PlanTypeListPageState(this.planModel);
}

class PlanTypeListPageState extends State<PlanTypeListPage>{
  final PlanModel _planModel ;
  PlanTypeListPageState(this._planModel);
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("111111"),),
      body: Text("ssss"),
    );
  }
}