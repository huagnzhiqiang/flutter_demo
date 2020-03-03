import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //主题
      theme: ThemeData(primarySwatch: Colors.yellow),

      //主题颜色字体
      home: Scaffold(
        appBar: AppBar(
            elevation: 20,
            title: Text("小强",
                textDirection: TextDirection.ltr,
                style: TextStyle(fontSize: 40, color: Colors.green))),
        //主题下面的内容
        body: Hello(),
      ),
    );
  }
}

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Text(
        "小强",
        textDirection: TextDirection.ltr,
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 50, color: Colors.red),
      ),
    );
  }
}
