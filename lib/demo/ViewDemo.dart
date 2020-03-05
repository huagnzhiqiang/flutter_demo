import 'package:flutter/material.dart';
import 'package:flutter_demo/model/Post.dart';

/*
 * @author 小强
 *
 * @time 2020/3/5  10:46
 *
 * @desc 视图:线性布局和网格布局
 *
 */

class ViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemBuilder: _itemBuilder,
      itemCount: posts.length,
    );
  }

  Widget _itemBuilder(BuildContext context, int index) {
    return Stack(
      children: <Widget>[
        SizedBox.expand(
          child: Image.network(
            posts[index].imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
            bottom: 8,
            left: 8,

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  posts[index].title,
                  style:
                      TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                ),
                Text(
                  posts[index].author,
                  style: TextStyle(color: Colors.orange,fontSize: 10),
                )
              ],
            ))
      ],
    );
  }
}

class PageViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      //表示滑动停止的时候就停在那个位置
//      pageSnapping: false ,
      //方向会反过来 第一页变成最后一页
//      reverse: true,
      //控制方向
      scrollDirection: Axis.horizontal,
      //滑动事件
      onPageChanged: (currentPage) => debugPrint("当前页面-->$currentPage"),
      controller: PageController(
          //控制刚开始页面是第一个
//          initialPage: 1,
//        keepPage: true,
          //控制占屏幕是百分比
//          viewportFraction: 0.8
          ),
      children: <Widget>[
        Container(
          color: Colors.green,
          alignment: Alignment.center,
          child: Text(
            "ONE",
            style: TextStyle(color: Colors.white),
          ),
        ),
        Container(
          color: Colors.red,
          alignment: Alignment.center,
          child: Text(
            "TOW",
            style: TextStyle(color: Colors.white),
          ),
        ),
        Container(
          color: Colors.orange,
          alignment: Alignment.center,
          child: Text(
            "THREE",
            style: TextStyle(color: Colors.white),
          ),
        )
      ],
    );
  }
}
