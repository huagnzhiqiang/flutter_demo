import 'package:flutter/material.dart';

/*
 * @author 小强
 *
 * @time 2020/3/4  17:00
 *
 * @desc 布局
 *
 */

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          IconBadge(
            Icons.clear,
          ),
          IconBadge(
            Icons.person,
          ),
          IconBadge(
            Icons.message,
          ),
        ],
      ),
    );
  }
}

class IconBadge extends StatelessWidget {
  final double mSize;

  final IconData mIconData;

  //构造器
  IconBadge(this.mIconData, {this.mSize = 30.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(
        mIconData,
        size: mSize,
        color: Colors.grey,
      ),
      height: mSize + 60,
      width: mSize + 60,
      color: Colors.blue,
    );
  }
}
