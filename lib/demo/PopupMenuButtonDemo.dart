import 'package:flutter/material.dart';

/*
 * @author 小强
 *
 * @time 2020/3/16  8:49
 *
 * @desc 菜单
 *
 */

class PopupMenuButtonDemo extends StatefulWidget {
  @override
  _PopupMenuButtonDemoState createState() => _PopupMenuButtonDemoState();
}

class _PopupMenuButtonDemoState extends State<PopupMenuButtonDemo> {
  @override
  Widget build(BuildContext context) {
    String _currentMenuItem = "小强";
    return Scaffold(
      appBar: AppBar(
        title: Text("PopupMenuButtonDemo"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(_currentMenuItem),
                PopupMenuButton(
                  onSelected: (value) {
                    setState(() {
                      _currentMenuItem = value;
                    });
                  },

                  itemBuilder: (context) {
                    return [
                      PopupMenuItem(
                        child: Text("home"),
                        value: "home",
                      ),
                      PopupMenuItem(
                        child: Text("my"),
                        value: "my",
                      ),
                    ];
                  },

                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
