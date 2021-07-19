import 'package:flutter/material.dart';

class MyTabBar extends StatefulWidget {
  @override
  _MyTabBarState createState() => _MyTabBarState();
}

class _MyTabBarState extends State<MyTabBar> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      notchMargin: 8.0,
      shape: CircularNotchedRectangle(),
      color: Color(0xFF2D2E2E),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildTabItem(index: 0, lable: 'Notes'),
          buildTabItem(index: 1, lable: 'Trash')
        ],
      ),
    );
  }

  Widget buildTabItem({@required int index, @required String lable}) {
    return TextButton(
        onPressed: () {
          print('gotpressed$lable');
        },
        child: Text(
          lable,
          style: TextStyle(color: Colors.white),
        ));
  }
}
