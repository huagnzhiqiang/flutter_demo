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
          SliverGrid(
            delegate:
                SliverChildBuilderDelegate(_builder, childCount: posts.length),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, crossAxisSpacing: 8.0, mainAxisSpacing: 8.0),
          )
        ],
      ),
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
