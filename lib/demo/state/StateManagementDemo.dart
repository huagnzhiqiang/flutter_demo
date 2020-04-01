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
        return CounterProvider(_count, setOnPressed,
            Scaffold(
                appBar: AppBar(title: Text("状态管理"),),
                body: CounterWrapper(),
                floatingActionButton: FloatingActionButton(
                    onPressed: setOnPressed, child: Icon(Icons.add),),
            ));
    }
}


class CounterWrapper extends StatelessWidget {


    @override
    Widget build(BuildContext context) {
        return Center(
            child: Counter(),
        );
    }
}

class Counter extends StatelessWidget {


    @override
    Widget build(BuildContext context) {

        final int count = CounterProvider
            .of(context)
            .count;

        final VoidCallback setOnPressed = CounterProvider
            .of(context)
            .setOnPressed;

        return Center(
            child: ActionChip(label: Text("$count"), onPressed: setOnPressed,),
        );
    }
}

class CounterProvider extends InheritedWidget {

    final int count;

    final VoidCallback setOnPressed;

    final Widget child;


    CounterProvider(this.count, this.setOnPressed, this.child) :super(child: child);

    @override
    bool updateShouldNotify(InheritedWidget oldWidget) => true;

    static CounterProvider of(BuildContext context) =>
        context.inheritFromWidgetOfExactType(CounterProvider);
}
