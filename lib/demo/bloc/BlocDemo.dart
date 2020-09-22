import 'package:flutter/material.dart';
import 'package:flutter_demo/demo/bloc/CounterHome.dart';

/*
 * @author 小强
 *
 * @time 2020/9/22  13:58
 *
 * @desc 
 *
 */

class BlocDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CounterProvider(
      counterBloc: CounterBloc(),
      child: Scaffold(
        appBar: AppBar(title: Text("BlocDemo")),
        body: CounterHome(),
        floatingActionButton: CounterActionButton(),
      ),
    );
  }
}
