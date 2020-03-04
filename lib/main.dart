import 'package:flutter/material.dart';

import 'demo/BottomNavigationBarDemo.dart';
import 'demo/DraberMode.dart';
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
        theme: ThemeData(
            primarySwatch: Colors.yellow,
            highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
            splashColor: Colors.white30),

        //主题颜色字体
        home: Home());
  }
}

/// ==================主题=====================
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
            bottom: TabBar(
              tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.account_balance),
                ),
                Tab(
                  icon: Icon(Icons.accessibility),
                ),
                Tab(
                  icon: Icon(Icons.account_balance_wallet),
                ),
              ],
              //指示器高度
              indicatorWeight: 1,
              //根据指示器大小
              indicatorSize: TabBarIndicatorSize.label,
              //指示器颜色
              indicatorColor: Colors.black26,
              //图标的颜色
              unselectedLabelColor: Colors.black45,
            ),
            //左上角的按钮
            //              leading: IconButton(
            //                  icon: Icon(Icons.menu), onPressed: () => debugPrint("菜单")),

            //右上角的搜索
            actions: <Widget>[
              IconButton(
                  icon: Icon(Icons.search), onPressed: () => debugPrint("搜索"))
            ],

            //阴影
            elevation: 0,
            centerTitle: true,
            title: Text("小强",
                textDirection: TextDirection.ltr,
                style: TextStyle(fontSize: 40, color: Colors.green))),

        //主题下面的内容
        //      body: Hello(),

        body: TabBarView(
          children: <Widget>[
          ListViewDemo(),
            Icon(
              Icons.accessibility,
              size: 120,
              color: Colors.blue,
            ),
            Icon(
              Icons.accessibility,
              size: 120,
              color: Colors.lightGreen,
            ),
          ],
        ),

        //抽屉
        drawer: DrawerMode(),

        //导航栏
        bottomNavigationBar: BottomNavigationBarDemo(),
      ),
    );
  }
}
