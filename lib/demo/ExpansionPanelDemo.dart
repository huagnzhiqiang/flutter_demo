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

  List<ExpansionPanelItem> _expansionPanelItem;

  @override
  void initState() {
    super.initState();

    _expansionPanelItem = <ExpansionPanelItem>[
      ExpansionPanelItem(
          "收缩面板1",
          false,
          Container(
            padding: EdgeInsets.all(20),
            child: Text("收缩面板"),
          )),
      ExpansionPanelItem(
          "收缩面板2",
          false,
          Container(
            padding: EdgeInsets.all(20),
            child: Text("收缩面板"),
          )),
      ExpansionPanelItem(
          "收缩面板3",
          false,
          Container(
            padding: EdgeInsets.all(20),
            child: Text("收缩面板"),
          )),
    ];
  }

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
                  _expansionPanelItem[panelIndex].isExpanded = !isExpanded;
                });
              },
              children: _expansionPanelItem.map((ExpansionPanelItem item) {
                return ExpansionPanel(
                  body: item.body,
                  isExpanded: item.isExpanded,
                  headerBuilder: (BuildContext context, bool isExpanded) {
                    return Container(
                      padding: EdgeInsets.all(20),
                      child: Text("收缩面板"),
                    );
                  },
                );
              }).toList(),
              /*children: [
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
              ],*/
            )
          ],
        ),
      ),
    );
  }
}

class ExpansionPanelItem {
  final String headText;
   bool isExpanded;
  final Widget body;

  ExpansionPanelItem(this.headText, this.isExpanded, this.body);
}
