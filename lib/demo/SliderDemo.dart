import 'package:flutter/material.dart';

/*
 * @author 小强
 *
 * @time 2020/3/25  15:19
 *
 * @desc 滑动选择器
 *
 */

class SliderDemo extends StatefulWidget {
  @override
  _SliderDemoState createState() => _SliderDemoState();
}

class _SliderDemoState extends State<SliderDemo> {
  var _sliderItem = 0.0;

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
            Text(_sliderItem.toString()),
            Slider(
              value: _sliderItem,
              onChanged: _handleOnChanged,
              activeColor: Colors.orange,
              inactiveColor: Colors.orange.withOpacity(0.4),
              max: 100.0,
              min: 0.0,
              divisions: 100,
              label: _sliderItem.toInt().toString(),
            ),
          ],
        ),
      ),
    );
  }

  void _handleOnChanged(double value) {
    setState(() {
      _sliderItem = value;
    });
  }
}
