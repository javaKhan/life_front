import 'package:flutter/material.dart';
import 'todo/TodoView.dart';
import 'plan/PlanView.dart';
import 'my/MyView.dart';
import 'cost/CostView.dart';

class AppFrame extends StatefulWidget {
  _AppFrameState createState() => _AppFrameState();
}

class _AppFrameState extends State<AppFrame> {

//  String pageTitle ="Life is beauty";
  int currentIndex = 0;
  List viewList = [TodoView(), PlanView(), CostView(), MyView()];

  void tapHandler(int index) {
    setState(() {
      this.currentIndex = index;
    });
  }

  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: viewList[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.black,
          currentIndex: currentIndex,
          onTap: tapHandler,
          items: [
            new BottomNavigationBarItem(
              icon: new Icon(Icons.alarm),
              title: new Text("待办"),
              backgroundColor: Color.fromRGBO(255, 0, 0, 1),
            ),
            new BottomNavigationBarItem(
                icon: new Icon(Icons.airport_shuttle),
                title: new Text("计划"),
                backgroundColor: Color.fromRGBO(255, 0, 0, 1)),
            new BottomNavigationBarItem(
                icon: new Icon(Icons.card_giftcard),
                title: new Text("财务"),
                backgroundColor: Color.fromRGBO(255, 0, 0, 1)),
            new BottomNavigationBarItem(
                icon: new Icon(Icons.supervised_user_circle),
                title: new Text("我 "),
                backgroundColor: Color.fromRGBO(255, 0, 0, 1)),
          ],
        ),
      ),
    );
  }
}
