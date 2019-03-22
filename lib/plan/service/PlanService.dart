import 'package:dio/dio.dart';
import 'package:life_front/common/LAPI.dart';
import 'dart:convert';
import 'package:life_front/plan/model/PlanModel.dart';

class PlanService {
  planAdd(PlanModel plan){
    var planJson = json.encode(plan);
    print("json:"+planJson);
    Dio dio = new Dio();

//    dio.post(LAPI.PLAN_ADD);
    print("保存成功");
  }
}