import 'package:flutter/material.dart';

class BottomNavigationBarDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BottomNavigationBarDemoState();
  }
}

class BottomNavigationBarDemoState extends State<BottomNavigationBarDemo> {
  var mCurrentIndex = 0;

  void mOtpHandler(int index) {
    setState(() {
      mCurrentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: mCurrentIndex,
        onTap: mOtpHandler,
        //超过4个就显示
        type: BottomNavigationBarType.fixed,
        //图标显示颜色
        fixedColor: Colors.black,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.explicit), title: Text("显示")),
          BottomNavigationBarItem(icon: Icon(Icons.history), title: Text("历史")),
          BottomNavigationBarItem(icon: Icon(Icons.list), title: Text("列表")),
          BottomNavigationBarItem(icon: Icon(Icons.person), title: Text("我的")),
        ]);
  }
}
