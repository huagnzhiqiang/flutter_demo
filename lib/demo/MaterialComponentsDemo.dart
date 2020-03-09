import 'package:flutter/material.dart';

/*
 * @author 小强
 *
 * @time 2020/3/9  11:51
 *
 * @desc 按钮演示
 *
 */

class MaterialComponentsDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("按钮的演示"),
      ),
      body: ListView(
        children: <Widget>[
          ListItem(
            title: "小强",
            page: FloatingActionButtonDemo(),
          ),
        ],
      ),
    );
  }
}

class FloatingActionButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FloatingActionButtonDemo"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        elevation: 0.0,
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 80.0,
        ),
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  final String title;
  final Widget page;

  ListItem({this.title, this.page});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(title),
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => page));
        });
  }
}
