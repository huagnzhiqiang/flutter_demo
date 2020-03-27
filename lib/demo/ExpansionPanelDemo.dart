import 'package:flutter/material.dart';

/*
 * @author 小强
 *
 * @time 2020/3/27  16:59
 *
 * @desc 收缩面板
 *
 */

class ExpansionPanelDemo extends StatefulWidget {
  @override
  _ExpansionPanelDemoState createState() => _ExpansionPanelDemoState();
}

class _ExpansionPanelDemoState extends State<ExpansionPanelDemo> {
  var _isExpanded = false;

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
            ExpansionPanelList(
              expansionCallback: (int panelIndex, bool isExpanded) {
                setState(() {
                  _isExpanded = !isExpanded;
                });
              },
              children: [
                ExpansionPanel(
                  headerBuilder: (BuildContext context, bool isExpanded) {
                    return Container(
                      padding: EdgeInsets.all(20),
                      child: Text("收缩面板"),
                    );
                  },
                  body: Container(
                    padding: EdgeInsets.all(20),
                    child: Text("收缩面板选项"),
                  ),
                  isExpanded: _isExpanded,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
