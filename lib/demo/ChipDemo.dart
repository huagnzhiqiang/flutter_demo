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
  List<String> list = ["Apple", "Banana", "Lemon"];

  var _action = "";

  var _selectList = [];

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
                  Divider(
                    color: Colors.orange,
                    height: 20.0,
                    indent: 15.0,
                  ),
                  Chip(
                    label: Text("删除演示"),
                    onDeleted: () {},
                    deleteIcon: Icon(Icons.delete),
                    deleteIconColor: Colors.red,
                    deleteButtonTooltipMessage: "长按删除",
                    avatar: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://resources.ninghao.org/images/overkill.png"),
                    ),
                  ),
                  Divider(
                    color: Colors.orange,
                    height: 20.0,
                    indent: 15.0,
                  ),
                  Wrap(
                    spacing: 10.0,
                    runSpacing: 10.0,
                    children: list.map((String data) {
                      return Chip(
                        label: Text(data),
                        onDeleted: () {
                          setState(() {
                            list.remove(data);
                          });
                        },
                        deleteIcon: Icon(Icons.delete),
                        deleteIconColor: Colors.red,
                        deleteButtonTooltipMessage: "长按删除",
                        avatar: CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://resources.ninghao.org/images/overkill.png"),
                        ),
                      );
                    }).toList(),
                  ),
                  Divider(
                    color: Colors.orange,
                    height: 20.0,
                    indent: 15.0,
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 15.0),
                    child: Text("选择后的:$_action"),
                  ),
                  Wrap(
                    spacing: 10.0,
                    runSpacing: 10.0,
                    children: list.map((String data) {
                      return ActionChip(
                        label: Text(data),
                        onPressed: () {
                          setState(() {
                            _action = data;
                          });
                        },
                        avatar: CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://resources.ninghao.org/images/overkill.png"),
                        ),
                      );
                    }).toList(),
                  ),

                  ///==================Filter=====================

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Divider(
                        color: Colors.orange,
                        height: 20.0,
                        indent: 15.0,
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 15.0),
                        child: Text("Filter:$_selectList"),
                        padding: EdgeInsets.only(bottom: 15.0),
                      ),
                      Wrap(
                        spacing: 10.0,
                        runSpacing: 10.0,
                        children: list.map((String data) {
                          return FilterChip(
                            label: Text(data),
                            selected: _selectList.contains(data),
                            onSelected: (value) {
                              setState(() {
                                if (_selectList.contains(data)) {
                                  _selectList.remove(data);
                                } else {
                                  _selectList.add(data);
                                }
                              });
                            },
                            avatar: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://resources.ninghao.org/images/overkill.png"),
                            ),
                          );
                        }).toList(),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              setState(() {
                list = ["Apple", "Banana", "Lemon"];
                _selectList = [];
              });
            },
            child: Icon(Icons.restore)));
  }
}
