import 'package:flutter/material.dart';

/*
 * @author 小强
 *
 * @time 2020/3/26  16:28
 *
 * @desc 显示对话框
 *
 */

class SimpleDialogDemo extends StatefulWidget {
  @override
  _SimpleDialogDemoState createState() => _SimpleDialogDemoState();
}

class _SimpleDialogDemoState extends State<SimpleDialogDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("显示对话框"),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[],
        ),
      ),
      floatingActionButton:
          FloatingActionButton(onPressed: floatingActionButton),
    );
  }

  void floatingActionButton() {
    showDialog(
      context: context,
      builder: (context) {
        return SimpleDialog(
          title: Text("显示对话框"),
          children: <Widget>[
            SimpleDialogOption(
              child: Text("选项1"),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            SimpleDialogOption(
              child: Text("选项2"),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            SimpleDialogOption(
              child: Text("选项3"),
              onPressed: () {2 SimpleDialog：选项（SimpleDialogOption）
                Navigator.pop(context);
              },
            ),
            SimpleDialogOption(
              child: Text("选项4"),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }
}
