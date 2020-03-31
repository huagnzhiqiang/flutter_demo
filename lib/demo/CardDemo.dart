import 'package:flutter/material.dart';
import 'package:flutter_demo/model/Post.dart';
/*
 * @author 小强
 *
 * @time 2020/3/31  16:21
 *
 * @desc 卡片
 *
 */

class CardDemo extends StatefulWidget {
  @override
  _CardDemoState createState() => _CardDemoState();
}

class _CardDemoState extends State<CardDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: posts.map((post) {
            return Column(
              children: <Widget>[
                Card(
                  child: Column(
                    children: <Widget>[
                      AspectRatio(
                        aspectRatio: 16 / 9,
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4),
                              topRight: Radius.circular(4)),
                          child: Image.network(
                            post.imageUrl,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                            post.imageUrl,
                          ),
                        ),
                        title: Text(post.title),
                        subtitle: Text(post.author),
                      ),
                      Container(
                        padding: EdgeInsets.all(20.0),
                        child: Text(
                          post.description,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      ),
                      ButtonBar(
                        children: <Widget>[
                          FlatButton(
                              onPressed: () {},
                              child: Text("like".toUpperCase())),
                          FlatButton(
                              onPressed: () {},
                              child: Text("read".toUpperCase())),
                        ],
                      )
                    ],
                  ),
                )
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
