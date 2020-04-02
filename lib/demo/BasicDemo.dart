import 'package:flutter/material.dart';

/*
 * @author 小强
 *
 * @time 2020/3/4  14:56
 *
 * @desc 第二页面
 *
 */

class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white12,
          image: DecorationImage(
            //重复
            repeat: ImageRepeat.repeat,
            //对齐
            alignment: Alignment.topCenter,
            image: NetworkImage(
                "http://b-ssl.duitang.com/uploads/item/201410/09/20141009224754_AswrQ.jpeg"),
            colorFilter: ColorFilter.mode(
                Colors.grey.withOpacity(0.9), BlendMode.hardLight),
          )),
      child: Row(
        children: <Widget>[
          Container(
            child: Icon(Icons.accessibility),
//            color: Colors.blue,
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.all(50),
            width: 90,
            height: 90,
            decoration: BoxDecoration(
                color: Colors.blue,
                //设置阴影
                boxShadow: [
                  BoxShadow(
                      offset: Offset(10, 10),
                      color: Colors.grey,
                      spreadRadius: -3,
                      blurRadius: 15)
                ],
                //边框颜色
                border: Border.all(color: Colors.black),

                //圆弧
//                borderRadius: BorderRadius.all(Radius.circular(10)),
                shape: BoxShape.circle,

                //圆弧渐变
//                gradient: RadialGradient(colors: [
//                  Colors.blue,
//                  Colors.grey,
//                ]),
                //线性渐变
                gradient: LinearGradient(colors: [
                  Colors.blue,
                  Colors.grey,
                ], begin: Alignment.bottomCenter, end: Alignment.bottomLeft)),
          )
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      ),
    );
  }
}

/// 富文本文本
class TextSpanDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: "作者:小强--",
          style: TextStyle(fontSize: 15, color: Colors.blue),
          children: [
            TextSpan(
                text: "星夜心有情， 星晴照心灯，灯照心情顺，便是酱油生。",
                style: TextStyle(fontSize: 12, color: Colors.black))
          ]),
    );
  }
}

/// 普通的文本
class TextDemo extends StatelessWidget {
  final String mAuthor = "小强";

  final TextStyle mMyTextStyle =
      TextStyle(fontWeight: FontWeight.w100, color: Colors.blue, fontSize: 15);

  @override
  Widget build(BuildContext context) {
    return Text(
      "<$mAuthor> -- 星夜心有情， 星晴照心灯，灯照心情顺，便是酱油生。",
      style: mMyTextStyle,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }
}
