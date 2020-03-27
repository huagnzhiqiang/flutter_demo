import 'package:flutter/material.dart';

/*
 * @author 小强
 *
 * @time 2020/3/27  14:38
 *
 * @desc 底部滑动窗口
 *
 */

class BottomSheetDemo extends StatefulWidget {
  @override
  _BottomSheetDemoState createState() => _BottomSheetDemoState();
}

class _BottomSheetDemoState extends State<BottomSheetDemo> {
  var bottomSheetKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: bottomSheetKey,
      appBar: AppBar(
        title: Text("显示提示对话框"),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(""),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  onPressed: _openBottomSheet,
                  child: Text("打开提示对话框选择"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  void _openBottomSheet() {
    bottomSheetKey.currentState.showBottomSheet((context) {
      return Container(
        color: Colors.black26.withOpacity(0.1),
        height: 90.0,
        width: double.infinity,
        padding: EdgeInsets.all(16),
        child: Row(
          children: <Widget>[
            Icon(Icons.add_circle_outline),
            SizedBox(
              width: 60,
            ),
            Text("小强"),
            Expanded(
                child: Text(
              "小强",
              textAlign: TextAlign.right,
            ))
          ],
        ),
      );
    });
  }
}
