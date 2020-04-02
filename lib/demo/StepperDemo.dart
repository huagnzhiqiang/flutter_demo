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
  var _currentStep = 0;

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
            Stepper(
              currentStep: _currentStep,
              onStepContinue: () {
                setState(() {
                  _currentStep < 3 ? ++_currentStep : _currentStep = 0;
                });
              },
              onStepCancel: () {
                setState(() {
                  _currentStep > 0 ? --_currentStep :  _currentStep = 0;
                });
              },
              steps: [
                Step(
                  title: Text("小强"),
                  content: Text("内容"),
                  subtitle: Text("子标题"),
                  isActive: _currentStep == 0,
                ),
                Step(
                  title: Text("小强"),
                  content: Text("内容"),
                  subtitle: Text("子标题"),
                  isActive: _currentStep == 1,
                ),
                Step(
                  title: Text("小强"),
                  content: Text("内容"),
                  subtitle: Text("子标题"),
                  isActive: _currentStep == 2,
                ),
                Step(
                  title: Text("小强"),
                  content: Text("内容"),
                  subtitle: Text("子标题"),
                  isActive: _currentStep == 3,
                ),
              ],
              onStepTapped: (int value) {
                setState(() {
                  _currentStep = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
