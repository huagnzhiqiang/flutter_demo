import 'package:flutter/material.dart';
/*
 * @author 小强
 *
 * @time 2020/4/1  10:47
 *
 * @desc 步骤
 *
 */

class StepperDemo extends StatefulWidget {
  @override
  _StepperDemoState createState() => _StepperDemoState();
}

class _StepperDemoState extends State<StepperDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Stepper(steps: [
              Step(title: Text("小强"), content: Text("内容"), subtitle: Text("子标题")),
              Step(title: Text("小强"), content: Text("内容"), subtitle: Text("子标题")),
              Step(title: Text("小强"), content: Text("内容"), subtitle: Text("子标题")),
              Step(title: Text("小强"), content: Text("内容"), subtitle: Text("子标题")),
            ]),
          ],
        ),
      ),
    );
  }
}
