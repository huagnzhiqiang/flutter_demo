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
  DateTime dt = DateTime.now();

  var selectedTime = new TimeOfDay(hour: 9, minute: 30);

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
              onTap: _selectDate,
              child: Row(
                children: <Widget>[
                  Text(DateFormat.yMd().format(dt)),
                  Icon(Icons.arrow_drop_down),
                  SizedBox(
                    width: 20.0,
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: _selectTime,
              child: Row(
                children: <Widget>[
                  Text(selectedTime.format(context)),
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

  void _selectDate() async {
    var datePicker = await showDatePicker(
        context: context,
        initialDate: dt,
        firstDate: DateTime(1900),
        lastDate: DateTime(2100));

    if (datePicker == null) return;

    setState(() {
      dt = datePicker;
    });
  }

  void _selectTime() async {
    var timeOfDay =
        await showTimePicker(context: context, initialTime: selectedTime);

    if (timeOfDay == null) return;

    setState(() {
      selectedTime = timeOfDay;
    });
  }
}
