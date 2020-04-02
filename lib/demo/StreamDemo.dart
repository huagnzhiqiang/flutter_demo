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


    @override
    void initState() {
        super.initState();

        Stream<String> _stream = new Stream.fromFuture(fetchDate());

        _stream.listen(onData, onDone: onDone, onError: onError);
    }

    @override
    Widget build(BuildContext context) {
        return Container(
        );
    }

    Future<String> fetchDate() async {
        await Future.delayed(Duration(seconds: 3));

        return "小强";
    }

    void onData(String event) {
        print(event);
    }

    onError(error) {
        print("onError-->$error");
    }

    void onDone() {
        print("onDone");
    }
}