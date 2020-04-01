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

    void setOnPressed() {
        setState(() {
            _count += 1;
        });
    }

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(title: Text("状态管理"),),
            body: CounterWrapper(_count, setOnPressed),
            floatingActionButton: FloatingActionButton(
                onPressed: setOnPressed, child: Icon(Icons.add),),
        );
    }
}


class CounterWrapper extends StatelessWidget {
    final int count;

    final VoidCallback setOnPressed;

    CounterWrapper(this.count, this.setOnPressed);

    @override
    Widget build(BuildContext context) {
        return Center(
            child: Counter(count, setOnPressed),
        );
    }
}

class Counter extends StatelessWidget {
    final int count;

    final VoidCallback setOnPressed;

    Counter(this.count, this.setOnPressed);

    @override
    Widget build(BuildContext context) {
        return Center(
            child: ActionChip(label: Text("$count"), onPressed: setOnPressed,),
        );
    }
}
