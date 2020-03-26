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
  var _showDialogItemText = "没有选项";

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
          children: <Widget>[Text(_showDialogItemText)],
        ),
      ),
      floatingActionButton:
          FloatingActionButton(onPressed: floatingActionButton),
    );
  }

  Future<void> floatingActionButton() async {
    var _showDialog = await showDialog(
      context: context,
      builder: (context) {
        return SimpleDialog(
          title: Text("显示对话框"),
          children: <Widget>[
            SimpleDialogOption(
              child: Text("选项1"),
              onPressed: () {
                Navigator.pop(context, "选项1");
              },
            ),
            SimpleDialogOption(
              child: Text("选项2"),
              onPressed: () {
                Navigator.pop(context, "选项2");
              },
            ),
            SimpleDialogOption(
              child: Text("选项3"),
              onPressed: () {
                Navigator.pop(context, "选项3");
              },
            ),
            SimpleDialogOption(
              child: Text("选项4"),
              onPressed: () {
                Navigator.pop(context, "选项4");
              },
            ),
          ],
        );
      },
    );

    if (_showDialog == null) return;

    setState(() {
      _showDialogItemText = _showDialog;
    });
  }
}
