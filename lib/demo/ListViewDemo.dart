import 'package:flutter/material.dart';
import 'package:flutter_demo/model/Post.dart';

class ListViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: listItemBuilder,
    );
  }

  /// ==================列表数据=====================
  Widget listItemBuilder(BuildContext context, int index) {
    return Container(
        //列表颜色
        color: Colors.white,

        //间距
        margin: EdgeInsets.all(8.0),

        //每一列样式设置
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                //16比9的比例
                AspectRatio(
                    aspectRatio: 16/9,
                    child:  Image.network(posts[index].imageUrl,fit: BoxFit.cover,),
                ),

                //离下面的间距
                SizedBox(
                  height: 16.0,
                ),

                //标题文字样式
                Text(
                  posts[index].title,
                  style: Theme.of(context).textTheme.title,
                ),

                //作者文字样式
                Text(
                  posts[index].author,
                  style: Theme.of(context).textTheme.subtitle,
                ),

                SizedBox(
                  height: 10,
                )
              ],
            ),
            Positioned.fill(
                child: Material(
              color: Colors.transparent,
              child: InkWell(
                splashColor: Colors.yellow.withOpacity(0.5),
                highlightColor: Colors.white.withOpacity(0.1),
                onTap: () {},
              ),
            ))
          ],
        ));
  }
}
