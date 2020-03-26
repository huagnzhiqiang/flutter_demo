import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
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
  final DateTime dt = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("时间选择器"),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            InkWell(
              onTap: () {},
              child: Row(
                children: <Widget>[
                  Text(DateFormat.yMd().format(dt)),
                  Icon(Icons.arrow_drop_down),
                  SizedBox(
                    width: 20.0,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
