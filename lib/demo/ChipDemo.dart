import 'package:flutter/material.dart';

/*
 * @author 小强
 *
 * @time 2020/3/30  9:25
 *
 * @desc 小碎片
 *
 */

class ChipDemo extends StatefulWidget {
  @override
  _ChipDemoState createState() => _ChipDemoState();
}

class _ChipDemoState extends State<ChipDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("小碎片"),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Wrap(
              spacing: 10.0,
              runSpacing: 10.0,
              children: <Widget>[
                Chip(label: Text("小强")),
                Chip(
                  label: Text("小强"),
                  backgroundColor: Colors.orange,
                ),
                Chip(
                  label: Text("小强"),
                  avatar: CircleAvatar(
                    backgroundColor: Colors.orange,
                    child: Text("强"),
                  ),
                ),
                Chip(
                  label: Text("小强"),
                  avatar: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://resources.ninghao.org/images/overkill.png"),
                  ),
                ),
                Divider(color: Colors.orange,height: 20.0,indent: 15.0,)
              ],
            )
          ],
        ),
      ),
    );
  }
}
