import 'package:flutter/material.dart';
import 'package:flutter_demo/model/Post.dart';

class ListViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: posts.length, itemBuilder: listItemBuilder,);
  }

  /// ==================列表数据=====================
  Widget listItemBuilder(BuildContext context, int index) {
    return Container( //列表颜色
      color: Colors.white,

      //间距
      margin: EdgeInsets.all(8.0),

      //每一列样式设置
      child: Column(children: <Widget>[Image.network(posts[index].imageUrl),

        //离下面的间距
        SizedBox(height: 16.0,),

        //标题文字样式
        Text(posts[index].title, style: Theme
            .of(context)
            .textTheme
            .title,),

        //作者文字样式
        Text(posts[index].author, style: Theme
            .of(context)
            .textTheme
            .subtitle,),

        SizedBox(height: 10,)],),);
  }

}