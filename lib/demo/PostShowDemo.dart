import 'package:flutter/material.dart';
import 'package:flutter_demo/model/Post.dart';

/*
 * @author 小强
 *
 * @time 2020/3/6  11:37
 *
 * @desc 详情页面
 *
 */

class PostShowDemo extends StatelessWidget {
  final Post mPost;

  PostShowDemo({@required this.mPost});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(mPost.title),
        elevation: 0,
      ),
      body: Column(
        children: <Widget>[Image.network(mPost.imageUrl), Container(
          padding: EdgeInsets.all(8),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(mPost.title,style: Theme.of(context).textTheme.title,),
              Text(mPost.author,style: Theme.of(context).textTheme.subhead,),
              SizedBox(height:10,),
              Text(mPost.description,style: Theme.of(context).textTheme.body1,),
            ],
          ),
        )],
      ),
    );
  }
}
