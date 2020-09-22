import 'dart:math';

import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
/*
 * @author 小强
 *
 * @time 2020/4/3  16:30
 *
 * @desc RxDart
 *
 */

class RxDartDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RxDartDemo"),
      ),
      body: RxDartDemoHome(),
    );
  }
}

class RxDartDemoHome extends StatefulWidget {
  @override
  _RxDartDemoHomeState createState() => _RxDartDemoHomeState();
}

class _RxDartDemoHomeState extends State<RxDartDemoHome> {
  PublishSubject<String> _publishSubject;

  @override
  void initState() {
    super.initState();

    // var observable = new Observable(Stream.fromIterable(['我爱你', "您好"]));
    // var observable = new Observable.periodic(Duration(seconds: 1), (x) => x);
    //
    // observable.listen((event) {
    //   if (event <= 3) {
    //     print(event);
    //   }
    // });

    // var publishSubject = PublishSubject<String>();
    // publishSubject.listen((data) => print("第一个-->$data"));
    // publishSubject.add("我爱你");
    // publishSubject.close();

    //顺序不一样
    // var behaviorSubject = BehaviorSubject();
    // behaviorSubject.listen((data) => print("第一个-->$data"));
    // behaviorSubject.add("我是第一个");
    // behaviorSubject.listen((data) => print("第二个-->$data"));
    // behaviorSubject.add("我是第二个");
    // behaviorSubject.close();

    // var replaySubject = ReplaySubject(maxSize: 3);
    // replaySubject.add("我是第一个");
    // replaySubject.add("我是第二个");
    // replaySubject.add("我是第三个");
    // replaySubject.listen((data) => print("第一个-->$data"));
    // replaySubject.listen((data) => print("第二个-->$data"));
    //
    // replaySubject.close();

    _publishSubject = PublishSubject<String>();

    _publishSubject
        // .where((item) => item.length > 9)
        .debounce(Duration(seconds: 1))
        .listen((data) => print(data));
  }

  @override
  void dispose() {
    super.dispose();
    _publishSubject.close();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Padding(
        padding: EdgeInsets.all(10.0),
        child: TextField(
          style: TextStyle(backgroundColor: null, fontSize: 15, color: Colors.red),
          decoration: InputDecoration(
            labelText: "Title",
            filled: true,
            labelStyle: TextStyle(backgroundColor: null, fontSize: 15, color: Colors.green),
          ),
          onChanged: (value) {
            _publishSubject.add("输入的的值: $value");
          },
          onSubmitted: (value) {
            _publishSubject.add("回车键的值: $value");
          },
        ),
      ),
    );
  }
}
