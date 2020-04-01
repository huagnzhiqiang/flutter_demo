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
            body: Counter(_count),
            floatingActionButton: FloatingActionButton(onPressed: () {
                setState(() {
                    _count += 1;
                });
            }, child: Icon(Icons.add),),
        );
    }
}

class Counter extends StatelessWidget {
  final int count ;


  Counter(this.count);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child: Chip(label: Text("$count")),
    );
  }
}
