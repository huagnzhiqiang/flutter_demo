import 'package:flutter/material.dart';

import 'demo/BasicDemo.dart';
import 'demo/BottomNavigationBarDemo.dart';
import 'demo/DraberMode.dart';
import 'demo/FormDemo.dart';
import 'demo/LayoutDemo.dart';
import 'demo/ListViewDemo.dart';
import 'demo/MaterialComponentsDemo.dart';
import 'demo/NavigatorDemo.dart';
import 'demo/SliverDemo.dart';
import 'demo/ViewDemo.dart';
import 'demo/state/StateManagementDemo.dart';

/*
 * @author 小强
 *
 * @time 2020/3/16  8:49
 *
 * @desc 主入口
 *
 */
void main() => runApp(App());

class App extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            //将右上角debug样式去掉
            debugShowCheckedModeBanner: false,

            //主题
            theme: ThemeData(
                primaryColor: Colors.yellow,
                highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
                splashColor: Colors.white30,
                accentColor: Colors.orange),

            //主题颜色字体
            home: Home(),
            //初始化路由
//      initialRoute: "/小强",
            routes: {
//        "/": (context) => NavigatorDemo(),
                "/小强": (context) =>
                    Page(
                        title: "小强",
                    )
            },
        );
    }
}

/// ==================主题=====================
class Home extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return DefaultTabController(
            length: 9,
            child: Scaffold(
                backgroundColor: Colors.grey[100],
                appBar: AppBar(
                    bottom: TabBar(
                        tabs: <Widget>[
                            Tab(
                                icon: Icon(Icons.compare),
                            ), Tab(
                                icon: Icon(Icons.account_balance),
                            ),
                            Tab(
                                icon: Icon(Icons.account_balance),
                            ),
                            Tab(
                                icon: Icon(Icons.account_balance),
                            ),
                            Tab(
                                icon: Icon(Icons.accessibility),
                            ),
                            Tab(
                                icon: Icon(Icons.account_balance_wallet),
                            ),
                            Tab(
                                icon: Icon(Icons.view_agenda),
                            ),
                            Tab(
                                icon: Icon(Icons.list),
                            ),
                            Tab(
                                icon: Icon(Icons.list),
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

                        StateManagementDemo(),

                        MaterialComponentsDemo(),

                        FormDemo(),

                        ListViewDemo(),

                        BasicDemo(),
//            Icon(Icons.accessibility,size: 120,color: Colors.blue,),
                        LayoutDemo(),

                        ViewDemo(),

                        SliverDemo(),

                        NavigatorDemo(),
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
