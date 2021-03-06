import 'package:flutter/material.dart';

/*
 * @author 小强
 *
 * @time 2020/3/25  15:07
 *
 * @desc 开关的演示
 *
 */
class SwitchDemo extends StatefulWidget {
  @override
  _SwitchDemoState createState() => _SwitchDemoState();
}

class _SwitchDemoState extends State<SwitchDemo> {
  var _switchItem = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Switch(开关按钮)"),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SwitchListTile(
              value: _switchItem,
              onChanged: _handleOnChanged,
              secondary: Icon(_switchItem
                  ? Icons.wifi
                  : Icons.wifi_lock),
              title: Text("这个wifi一个开关",style: TextStyle(fontSize: 22.0)),
              subtitle: Text("这个一个wifi开关描述"),
              selected: _switchItem,
            ),
            Text(
              _switchItem ? "开" : "关",
              style: TextStyle(fontSize: 32.0),
            ),
            Switch(value: _switchItem, onChanged: _handleOnChanged),
          ],
        ),
      ),
    );
  }

  void _handleOnChanged(bool value) {
    setState(() {
      _switchItem = value;
    });
  }
}
