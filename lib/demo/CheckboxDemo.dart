import 'package:flutter/material.dart';

import 'MaterialComponentsDemo.dart';

/*
 * @author 小强
 *
 * @time 2020/3/25  11:30
 *
 * @desc 复选框演示
 *
 */

class CheckboxDemo extends StatefulWidget {
  @override
  _CheckboxDemoState createState() => _CheckboxDemoState();
}

class _CheckboxDemoState extends State<CheckboxDemo> {
  bool _CheckboxItemA = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("复选框的演示"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

          CheckboxListTile(
            value: _CheckboxItemA,
            onChanged: (value) {
              setState(() {
                _CheckboxItemA = value;
              });
            },
            selected: _CheckboxItemA,
            subtitle: Text("子带标题的复选框"),
            title: Text("带标题的复选框"),
            secondary: Icon(Icons.add),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Checkbox(
                value: _CheckboxItemA,
                onChanged: (value) {
                  setState(() {
                    _CheckboxItemA = value;
                  });
                },
                //设置勾选状态的颜色,默认是主题颜色
                activeColor: Colors.red,
              ),              Checkbox(
                value: _CheckboxItemA,
                onChanged: (value) {
                  setState(() {
                    _CheckboxItemA = value;
                  });
                },
                //设置勾选状态的颜色,默认是主题颜色
                activeColor: Colors.red,
              ),

            ],
          )
        ],
      ),
    );
  }
}
