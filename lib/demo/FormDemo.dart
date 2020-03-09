import 'package:flutter/material.dart';

/*
 * @author 小强
 *
 * @time 2020/3/9  9:09
 *
 * @desc 表单的演示
 *
 */

class FormDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Theme(
        data: Theme.of(context).copyWith(
          primaryColor: Colors.yellow,
        ),
        child: ThemeDemo(),
      ),
    );
  }
}

class ThemeDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).accentColor,
    );
  }
}
