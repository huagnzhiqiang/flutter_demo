import 'dart:async';

import 'package:flutter/material.dart';
/*
 * @author 小强
 *
 * @time 2020/4/2  9:55
 *
 * @desc
 *
 */


class StreamDemo extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text("Stream"),
            ),
            body: StreamDemoHome(),
        );
    }
}

class StreamDemoHome extends StatefulWidget {

    @override
    _StreamDemoHomeState createState() => _StreamDemoHomeState();
}

class _StreamDemoHomeState extends State<StreamDemoHome> {

    StreamSubscription _streamSubscription;

    StreamController<String> _streamDemo;

    StreamSink _sink;

    String _data = "...";

    @override
    void initState() {
        super.initState();
        _streamDemo = StreamController.broadcast();
        _sink = _streamDemo.sink;
        Stream<String> _stream = new Stream.fromFuture(fetchDate());

        _streamSubscription = _streamDemo.stream.listen(onData, onDone: onDone, onError: onError);
        _streamSubscription =
            _streamDemo.stream.listen(onDataTow, onDone: onDone, onError: onError);
    }

    @override
    void dispose() {
        _streamDemo.close();
        super.dispose();
    }

    @override
    Widget build(BuildContext context) {
        return Container(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
//                  Text(_data),
                    StreamBuilder(initialData: "...",
                        builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
                            return Text("${snapshot.data}");
                        },stream: _streamDemo.stream,),
                    Row(
                        children: <Widget>[
                            FlatButton(onPressed: _addStream, child: Text("add")),
                            FlatButton(onPressed: _pauseStream, child: Text("pause")),
                            FlatButton(onPressed: _resumeStream, child: Text("resume")),
                            FlatButton(onPressed: _cancelStream, child: Text("cancel")),

                        ],
                    )
                    ,
                ]
                ,
            )
            ,
        );
    }

    Future<String> fetchDate() async {
        await Future.delayed(Duration(seconds: 3));
        return "小强";
    }

    void onData(String event) {
        print(event);
        setState(() {
            _data = event;
        });
    }

    void onDataTow(String event) {
        print("tow:$event");
    }

    onError(error) {
        print("onError-->$error");
    }

    void onDone() {
        print("onDone");
    }

    //暂停
    void _pauseStream() {
        print("暂停");
        _streamSubscription.pause();
    }

    //重置
    void _resumeStream() {
        print("重置");
        _streamSubscription.resume();
    }

    //取消
    void _cancelStream() {
        print("取消");
        _streamSubscription.cancel();
    }

    void _addStream() async {
        var data = await fetchDate();
        _sink.add(data);
    }
}