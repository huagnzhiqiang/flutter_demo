import 'package:flutter/material.dart';

/*
 * @author 小强
 *
 * @time 2020/3/26  16:56
 *
 * @desc AlertDialog提示对话框
 *
 */
class AlertDialogDemo extends StatefulWidget {
  @override
  _AlertDialogDemoState createState() => _AlertDialogDemoState();
}

class _AlertDialogDemoState extends State<AlertDialogDemo> {
  var alertDialogItemText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("显示提示对话框"),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(alertDialogItemText),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  onPressed: _openAlertDialog,
                  child: Text("打开提示对话框选择"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  /*
   * 打开提示框
   */
  Future<void> _openAlertDialog() async {
    final dialog = await showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("提示对话框"),
            content: Text("提示对话框选择"),
            actions: <Widget>[
              FlatButton(
                  onPressed: () {
                    Navigator.pop(context, Action.Cancel);
                  },
                  child: Text("cancel")),
              FlatButton(
                  onPressed: () {
                    Navigator.pop(context, Action.Ok);
                  },
                  child: Text("ok"))
            ],
          );
        });

    if (dialog == null) return;

    switch (dialog) {
      case Action.Cancel:
        setState(() {
          alertDialogItemText = "取消";
        });
        break;
      case Action.Ok:
        setState(() {
          alertDialogItemText = "ok";
        });
        break;
    }
  }
}

enum Action {
  Cancel,
  Ok,
}
