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
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 150,
            width: 150,
            child: Container(
              //对齐
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(18)),
                  color: Colors.green),
              child: Icon(
                Icons.message,
                color: Colors.grey,
                size: 50,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 150,
            width: 150,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(18)),
                  color: Colors.green),
              child: Icon(
                Icons.message,
                color: Colors.grey,
                size: 50,
              ),
            ),
          )
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
