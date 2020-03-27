import 'package:flutter/material.dart';

/*
 * @author 小强
 *
 * @time 2020/3/27  16:03
 *
 * @desc 操作提示栏
 *
 */

class SnackBarDemo extends StatefulWidget {
  @override
  _SnackBarDemoState createState() => _SnackBarDemoState();
}

class _SnackBarDemoState extends State<SnackBarDemo> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("显示底部滑动窗口"),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[OpenSnackBar()],
            )
          ],
        ),
      ),
    );
  }
}

class OpenSnackBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {
        Scaffold.of(context).showSnackBar(SnackBar(
          content: Text("操作提示栏..."),
          action: SnackBarAction(label: "OK", onPressed: (){}),
        ));
      },
      child: Text("openBSnackBar"),
    );
  }
}
