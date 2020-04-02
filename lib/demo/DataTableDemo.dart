import 'package:flutter/material.dart';
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
  //索引
  var _sortColumnIndex = 0;

  //是否升序
  var _sortAscending = false;

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
              sortColumnIndex: _sortColumnIndex,
              sortAscending: _sortAscending,
              columns: [
                DataColumn(
                  label: Text("Title"),
                  onSort: (int columnIndex, bool ascending) {
                    setState(() {
                      _sortColumnIndex = columnIndex;
                      _sortAscending = ascending;

                      //numbers.sort((a, b) => a.length.compareTo(b.length));
                      posts.sort((a, b) {
                        if (!ascending) {
                          final c = a;
                          a = b;
                          b = c;
                        }

                        return a.title.length.compareTo(b.title.length);
                      });
                    });
                  },
                ),
                DataColumn(
                  label: Text("Author"),
                ),
                DataColumn(
                  label: Text("Image"),
                ),
              ],
              rows: posts.map((post) {
                return DataRow(
                    selected: post.selected,
                    onSelectChanged: (value) {

                      print(value);
                      setState(() {
                        if (post.selected != value) {
                          post.selected = value;
                        }
                      });
                    },
                    cells: [
                      DataCell(Text(post.title)),
                      DataCell(Text(post.author)),
                      DataCell(Image.network(post.imageUrl))
                    ]);
              }).toList(),
            )
          ],
        ),
      ),
    );
  }
}
