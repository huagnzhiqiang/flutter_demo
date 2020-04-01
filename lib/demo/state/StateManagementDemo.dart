import 'package:flutter/material.dart';

/*
 * @author 小强
 *
 * @time 2020/4/1  15:25
 *
 * @desc 状态管理
 *
 */

class StateManagementDemo extends StatefulWidget {

    @override
    State<StatefulWidget> createState() => _StateManagementDemo();
}

class _StateManagementDemo extends State<StateManagementDemo> {
    var _count = 0;

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(title: Text("状态管理"),),
            body: Center(
                child: Chip(label: Text("$_count")),
            ),
            floatingActionButton: FloatingActionButton(onPressed: () {
                setState(() {
                    _count += 1;
                });
            }, child: Icon(Icons.add),),
        );
    }
}
