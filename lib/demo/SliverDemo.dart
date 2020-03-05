import 'package:flutter/material.dart';
import 'package:flutter_demo/model/Post.dart';

/*
 * @author 小强
 *
 * @time 2020/3/5  15:06
 *
 * @desc Sliver的示例
 *
 */

class SliverDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text("小强"),
            centerTitle: true,
//            pinned: true,
            floating: true,
          ),
          SliverSafeArea(
              sliver: SliverPadding(
            padding: EdgeInsets.all(8),
            sliver: SliverListDemo(),
          ))
        ],
      ),
    );
  }
}

class SliverListDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(_builder, childCount: posts.length),
    );
  }

  Widget _builder(BuildContext context, int index) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10.0),
      child: Material(
        borderRadius: BorderRadius.circular(10.0),
        elevation: 10,
        shadowColor: Colors.green.withOpacity(0.5),
        child: Container(
            child: Stack(
          children: <Widget>[
            Image.network(
              posts[index].imageUrl,
              fit: BoxFit.cover,
            ),
            Positioned(
                left: 10,
                top: 10,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      posts[index].title,
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      posts[index].author,
                      style: TextStyle(fontSize: 12),
                    )
                  ],
                )),
          ],
        )),
      ),
    );
  }
}

class SliverGridDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      delegate: SliverChildBuilderDelegate(_builder, childCount: posts.length),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, crossAxisSpacing: 8.0, mainAxisSpacing: 8.0),
    );
  }

  Widget _builder(BuildContext context, int index) {
    return Container(
      child: Image.network(
        posts[index].imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }
}
