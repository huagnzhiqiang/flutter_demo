import 'package:flutter/material.dart';
import 'package:flutter_demo/model/Post.dart';
import 'package:flutter_demo/model/Post.dart';
/*
 * @author 小强
 *
 * @time 2020/3/30  16:09
 *
 * @desc 数据表格
 *
 */

class DataTableDemo extends StatefulWidget {
  @override
  _DataTableDemoState createState() => _DataTableDemoState();
}

class _DataTableDemoState extends State<DataTableDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("数据表格"),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            DataTable(
              columns: [
                DataColumn(
                  label: Text("Title"),
                ),
                DataColumn(
                  label: Text("Author"),
                ),
                DataColumn(
                  label: Text("Image"),
                ),
              ],
              rows: posts.map((post) {
                return DataRow(cells: [
                  DataCell(Text(post.title)),
                  DataCell(Text(post.author)),
                  DataCell(Image.network(post.imageUrl))
                ]
                );
              }).toList(),
            )
          ],
        ),
      ),
    );
  }
}
