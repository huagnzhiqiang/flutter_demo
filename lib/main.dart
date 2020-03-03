import 'package:flutter/material.dart';

import 'model/Post.dart';

//主入口
void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        //主题
        theme: ThemeData(primarySwatch: Colors.yellow),

        //主题颜色字体
        home: Home());
  }
}

/// ==================主题=====================
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
          elevation: 20,
          title: Text("小强",
              textDirection: TextDirection.ltr,
              style: TextStyle(fontSize: 40, color: Colors.green))),

      //主题下面的内容
      //      body: Hello(),

      body: ListView.builder(
        itemCount: posts.length,
        itemBuilder: listItemBuilder,
      ),
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
      child: Column(
        children: <Widget>[
          Image.network(posts[index].imageUrl),

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
    );
  }
}

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "小强",
        textDirection: TextDirection.ltr,
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 50, color: Colors.red),
      ),
    );
  }
}
