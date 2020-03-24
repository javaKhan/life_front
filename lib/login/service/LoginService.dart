import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';
import 'dart:async';
import "package:life_front/common/LAPI.dart";

class LoginService {
  login(String phone, String pwd) async {
    return true;
    Dio dio = new Dio();
    dio.options.baseUrl=LAPI.BASE_URL;
    dio.options.connectTimeout = 50000;
    dio.options.receiveTimeout = 30000;
    FormData formData = new FormData();
    formData.add("phone",phone);
    formData.add("pwd",pwd);
    print("登陆地址:"+LAPI.LOGIN);
    final Response response = await dio.post(LAPI.LOGIN,data: formData);
    if(response.statusCode==200 && response.data!=null){
      return true;
    }else{
      return false;
    }
  }

//  mylogin (String phone,String pwd) async{
////    final  response  =  await http.post(LAPI.TEST);
//    final  response  =  await http.get(LAPI.BAIDU);
//    print("jieguo:"+response.body);
//  }
}
