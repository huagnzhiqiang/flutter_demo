import 'dart:async';

import 'package:flutter/material.dart';

/*
 * @author 小强
 *
 * @time 2020/9/22  16:03
 *
 * @desc  bloc
 *
 */

class CounterHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var counterBloc = CounterProvider.of(context).counterBloc;

    return Center(
      child: StreamBuilder(
        initialData: 0,
        stream: counterBloc.count,
        builder: (context, snapshot) {
          return ActionChip(
              label: new Text("${snapshot.data}"),
              onPressed: () {
                // counterBloc.log();
                // counterBloc.onData(1);
                counterBloc._countController.add(1);
              });
        },
      ),
    );
  }
}

class CounterActionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    var counterBloc = CounterProvider.of(context).counterBloc;

    return FloatingActionButton(
      onPressed: () {
        // counterBloc.log();
        counterBloc.onData(1);
      },
      child: Icon(Icons.add),
    );
  }
}

class CounterProvider extends InheritedWidget {
  final Widget child;
  final CounterBloc counterBloc;

  CounterProvider({this.child, this.counterBloc}) : super(child: child);

  static CounterProvider of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<CounterProvider>();
  }

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }
}

class CounterBloc {
  int _count = 0;

  final _counterController = StreamController<int>();

  StreamSink<int> get counter => _counterController.sink;

  final _countController = StreamController<int>();

  Stream<int> get count => _countController.stream;

  CounterBloc() {
    _counterController.stream.listen(onData);
  }

  void onData(int data) {
    print("$data");
    _count = data + _count;
    _countController.add(_count);
  }

  void dispose() {
    _counterController.close();
    _countController.close();
  }

  void log() {
    print("小强");
  }
}
