import 'package:flutter/material.dart';
/*
 * @author 小强
 *
 * @time 2020/3/25  15:39
 *
 * @desc 时间选择器(第三方包)
 *
 */

class DateTimeDemo extends StatefulWidget {
  @override
  _DateTimeDemoState createState() => _DateTimeDemoState();
}

class _DateTimeDemoState extends State<DateTimeDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("时间选择器"),),

      body: Container(
        child: Column(
          children: <Widget>[

          ],
        ),
      ),
    );
  }
}
