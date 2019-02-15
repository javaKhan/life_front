import 'package:flutter/material.dart';

/**
 * 主页内容
 */
class HomePage extends StatefulWidget {
  HomePage({Key key, }) : super(key: key);
  _HomePageState createState() => _HomePageState();

}

/**
 * 主页状态
 */
class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: new Text("Life is beauty")),
      body: Center(
        child: new Text("sddsfsdfsdfsd"),
      ),
      bottomNavigationBar: new BottomNavigationBar(items: <BottomNavigationBarItem>[
        new BottomNavigationBarItem(icon: new Icon(Icons.alarm),title: new Text("待办"),backgroundColor: Color.fromRGBO(255, 0, 0, 1),),
        new BottomNavigationBarItem(icon: new Icon(Icons.airport_shuttle),title: new Text("计划"),backgroundColor: Color.fromRGBO(255, 0, 0, 1)),
        new BottomNavigationBarItem(icon: new Icon(Icons.card_giftcard),title: new Text("财务"),backgroundColor: Color.fromRGBO(255, 0, 0, 1)),
      ],),
    );
  }
}