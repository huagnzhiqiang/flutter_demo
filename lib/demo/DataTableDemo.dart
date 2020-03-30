import 'package:flutter/material.dart';
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
        width: double.infinity,
        child: Column(
          children: <Widget>[
            DataTable(
              columns: [
                DataColumn(
                  label: Text("Title"),
                ),
                DataColumn(
                  label: Text("Author"),
                ),
              ],
              rows: [
                DataRow(
                  cells: [
                    DataCell(Text("hello ~")),
                    DataCell(Text("小强")),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(Text("hello ~")),
                    DataCell(Text("小强")),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(Text("hello ~")),
                    DataCell(Text("小强")),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(Text("hello ~")),
                    DataCell(Text("小强")),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(Text("hello ~")),
                    DataCell(Text("小强")),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
