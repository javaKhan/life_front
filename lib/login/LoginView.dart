import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {

  @override
  State createState() {
    return LoginViewState();
  }
}

class LoginViewState extends State<LoginView> {
  final login_form_key = GlobalKey<FormState>();
  String phone ,pwd;

  login(){
    login_form_key.currentState.save();
    login_form_key.currentState.validate();
    debugPrint('登陆提交: 手机: $phone    密码:$pwd');
  }

  String validatePhone(value){
    if(value.isEmpty){
      return "手机号不能为空";
    }
    if(! RegExp('^((13[0-9])|(15[^4])|(166)|(17[0-8])|(18[0-9])|(19[8-9])|(147,145))\\d{8}\$').hasMatch(value)){
      return "手机号格式不正确";
    }
    return null;
  }
  String validatePwd(value){
    if(value.isEmpty){
      return "密码不能为空";
    }
    if(value.length<6){
      return "密码长度不能小于6位";
    }
    return null;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigoAccent[50],
      body: Theme(
        data: ThemeData(
          primaryColor: Colors.indigoAccent[50],
          accentColor: Colors.blue[200],
          buttonColor: Colors.blueAccent[100],
        ),
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Form(
                key: login_form_key,
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "账号",
                      ),
                      onSaved: (value){
                        phone = value;
                      },
                      validator: validatePhone,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "密码",
                      ),
                      onSaved: (value){
                        pwd = value;
                      },
                      validator: validatePwd,
                    ),
                    SizedBox(height: 32,),
                    Container(
                      width: double.infinity,
                      child: RaisedButton(
                        highlightColor: Colors.red,
                        onPressed: login,
                        color: Theme.of(context).accentColor,
                        child: Text("登陆",style: TextStyle(color: Colors.white),),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),);
  }
}