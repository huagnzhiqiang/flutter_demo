import 'package:flutter/material.dart';

/*
 * @author 小强
 *
 * @time 2020/3/25  14:35
 *
 * @desc 单选按钮
 *
 */

class RadioDemo extends StatefulWidget {
  @override
  _RadioDemoState createState() => _RadioDemoState();
}

class _RadioDemoState extends State<RadioDemo> {
  bool _radioGroupA = false;

  void _handleRadioValueChanged(bool value) {
    setState(() {
      _radioGroupA = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Radio(单选按钮)"),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(_radioGroupA ? "男" : "女"),
            SizedBox(
              height: 10.0,
            ),
            RadioListTile(
              value: true,
              groupValue: _radioGroupA,
              onChanged: _handleRadioValueChanged,
              title: Text("男"),
              subtitle: Text("这是一个男的选项!"),
              secondary: Icon(Icons.radio),
              selected: _radioGroupA,
            ),
            RadioListTile(
              value: false,
              groupValue: _radioGroupA,
              onChanged: _handleRadioValueChanged,
              title: Text("女"),
              subtitle: Text("这是一个女的选项!"),
              secondary: Icon(Icons.radio),
              selected: _radioGroupA,
            ),
            Radio(
                value: true,
                groupValue: _radioGroupA,
                onChanged: _handleRadioValueChanged),
            Radio(
                value: false,
                groupValue: _radioGroupA,
                onChanged: _handleRadioValueChanged),
          ],
        ),
      ),
    );
  }
}
