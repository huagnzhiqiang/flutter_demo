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
