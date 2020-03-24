import 'package:flutter/material.dart';
import 'package:life_front/plan/PlanTypeListPage.dart';
import 'package:life_front/plan/model/PlanModel.dart';

class PlanTypeWidget extends StatelessWidget {

  final PlanModel planModel ;

  PlanTypeWidget(this.planModel);

  Widget build(BuildContext context) {
    return Container(
      child:GestureDetector(
        child: Row(
          children: <Widget>[
            Text(planModel.title,style: TextStyle(fontSize: 30,),)
          ],
        ),
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
            return PlanTypeListPage(planModel);
          }));
        },
      )
    );
  }
}