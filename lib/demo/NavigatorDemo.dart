import 'package:flutter/material.dart';

/*
 * @author 小强
 *
 * @time 2020/3/6  9:27
 *
 * @desc 路由的演示
 *
 */

class NavigatorDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          children: <Widget>[
            FlatButton(
              onPressed: null,
              child: Text("小强"),
            ),
            FlatButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => Page(
                          title: "小强",
                        )));
              },
              child: Text("强仔"),
            )
          ],
        ),
      ),
    );
  }
}

class Page extends StatelessWidget {
  final String title;

  Page({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.arrow_back),
      ),
    );
  }
}
