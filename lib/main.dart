import 'package:flutter/material.dart';

import 'demo/ListViewDemo.dart';

//主入口
void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      //将右上角debug样式去掉
        debugShowCheckedModeBanner: false,

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
    return Scaffold(backgroundColor: Colors.grey[100], appBar: AppBar(

      //左上角的按钮
        leading: IconButton(icon: Icon(Icons.menu), onPressed:()=>  debugPrint("菜单")),

        //右上角的搜索
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: ()=> debugPrint("搜索"))
        ],
        //阴影
        elevation: 20,
        centerTitle: true,
        title: Text("小强", textDirection: TextDirection.ltr,
            style: TextStyle(fontSize: 40, color: Colors.green))

    ),

      //主题下面的内容
      //      body: Hello(),

      body: ListViewDemo(),);
  }
}
