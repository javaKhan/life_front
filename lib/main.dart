import 'package:flutter/material.dart';
import 'package:life_front/login/LoginView.dart';
import 'AppFrame.dart';

void main() => runApp(LifeApp());

class LifeApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LIFE',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
//      home: AppFrame(),
      home: LoginView(),
    );
  }
}
