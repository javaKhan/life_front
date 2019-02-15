import 'package:flutter/material.dart';

/**
 * 主页内容
 */
class HomePage extends StatefulWidget {
  final String title=" Life is beauty ";
  @override
  State createState() {

  }
}

/**
 * 主页状态
 */
class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: new Text("Life is beauty")),

    );
  }
}