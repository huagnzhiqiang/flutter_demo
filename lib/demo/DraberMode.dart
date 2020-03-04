import 'package:flutter/material.dart';

/// 抽屉的部件
class DrawerMode extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return
      Drawer(
        child: ListView(
          children: <Widget>[
            //头部
            //                DrawerHeader(
            //                  child: Text("小强"),
            //                  decoration: BoxDecoration(color: Colors.grey[100]),
            //                ),

            //个人信息
            UserAccountsDrawerHeader(
              accountName: Text(
                "小强",
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              accountEmail: Text("w739932799@qq.com"),
              currentAccountPicture: Image.network(
                  "http://b-ssl.duitang.com/uploads/item/201410/09/20141009224754_AswrQ.jpeg"),
              decoration: BoxDecoration(

                  color: Colors.yellow[100],
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(Colors.yellow[400].withOpacity(0.2), BlendMode.hardLight),
                      image: NetworkImage(
                          "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1583300295494&di=cc00a8f00750059aa1e80f53108df2ab&imgtype=0&src=http%3A%2F%2Fpic25.nipic.com%2F20121116%2F9252150_144336550000_2.jpg"))),
            ),

            ListTile(
              title: Text(
                "消息",
                textAlign: TextAlign.right,
              ),
              trailing: Icon(
                Icons.message,
                size: 22,
                color: Colors.black26,
              ),
              //点击关闭按钮
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              title: Text(
                "喜欢",
                textAlign: TextAlign.right,
              ),
              trailing: Icon(
                Icons.favorite,
                size: 22,
                color: Colors.black26,
              ),
              //点击关闭按钮
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              title: Text(
                "设置",
                textAlign: TextAlign.right,
              ),
              trailing: Icon(
                Icons.settings,
                size: 22,
                color: Colors.black26,
              ),
              //点击关闭按钮
              onTap: () => Navigator.pop(context),
            ),
          ],
        ),
      );
  }

}