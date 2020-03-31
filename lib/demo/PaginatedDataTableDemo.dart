import 'package:flutter/material.dart';
import 'package:flutter_demo/model/Post.dart';
/*
 * @author 小强
 *
 * @time 2020/3/30  16:09
 *
 * @desc 分页显示表格数据
 *
 */

class PaginatedDataTableDemo extends StatefulWidget {
  @override
  _PaginatedDataTableDemoState createState() => _PaginatedDataTableDemoState();
}

class _PaginatedDataTableDemoState extends State<PaginatedDataTableDemo> {
  //索引
  var _sortColumnIndex = 0;

  //是否升序
  var _sortAscending = false;

  var _postDataSource = PostsDataSource();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("分页显示表格数据"),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            PaginatedDataTable(
              sortColumnIndex: _sortColumnIndex,
              sortAscending: _sortAscending,
              header: Text("分页显示表格数据"),
              source: _postDataSource,
              //每一页显示多少条
              rowsPerPage: 5,
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
              /*rows: posts.map((post) {
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
              }).toList(),*/
            )
          ],
        ),
      ),
    );
  }
}

class PostsDataSource  extends DataTableSource {

   var _list = posts;
  @override
  DataRow getRow(int index) {
    return DataRow(cells: [
      DataCell(Text(_list[index].title)),
      DataCell(Text(_list[index].author)),
      DataCell(Image.network(_list[index].imageUrl))
    ]);
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => _list.length;

  @override
  int get selectedRowCount => 0;


}
