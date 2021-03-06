import 'package:flutter/material.dart';

import 'AlertDialogDemo.dart';
import 'BottomSheetDemo.dart';
import 'CardDemo.dart';
import 'CheckboxDemo.dart';
import 'ChipDemo.dart';
import 'DataTableDemo.dart';
import 'DateTimeDemo.dart';
import 'ExpansionPanelDemo.dart';
import 'FormDemo.dart';
import 'PaginatedDataTableDemo.dart';
import 'PopupMenuButtonDemo.dart';
import 'RadioDemo.dart';
import 'SimpleDialogDemo.dart';
import 'SliderDemo.dart';
import 'SnackBarDemo.dart';
import 'StepperDemo.dart';
import 'SwitchDemo.dart';

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
                  title: "步骤StepperDemo",
                  page: StepperDemo(),
               ), ListItem(
                  title: "卡片CardDemo",
                  page: CardDemo(),
               ),
               ListItem(
                  title: "分页显示表格数据PaginatedDataTableDemo",
                  page: PaginatedDataTableDemo(),
               ),
               ListItem(
                  title: "数据表格DataTableDemo",
                  page: DataTableDemo(),
               ),
               ListItem(
                  title: "小碎片ChipDemo",
                  page: ChipDemo(),
               ),
               ListItem(
                  title: "收缩面板ExpansionPanelDemo",
                  page: ExpansionPanelDemo(),
               ),
               ListItem(
                  title: "操作提示栏SnackBarDemo",
                  page: SnackBarDemo(),
               ),
               ListItem(
                  title: "底部滑动窗口BottomSheetDemo",
                  page: BottomSheetDemo(),
               ),
               ListItem(
                  title: "显示提示对话框AlertDialogDemo",
                  page: AlertDialogDemo(),
               ),
               ListItem(
                  title: "显示对话框SimpleDialogDemo",
                  page: SimpleDialogDemo(),
               ),
               ListItem(
                  title: "时间选择器SliderDemo",
                  page: DateTimeDemo(),
               ),
               ListItem(
                  title: "滑动选择器SliderDemo",
                  page: SliderDemo(),
               ),
               ListItem(
                  title: "开关SwitchDemo",
                  page: SwitchDemo(),
               ),
               ListItem(
                  title: "单选框RadioDemo",
                  page: RadioDemo(),
               ),
               ListItem(
                  title: "复选框CheckboxDemo",
                  page: CheckboxDemo(),
               ),
               ListItem(
                  title: "表单FormDemo",
                  page: FormDemo(),
               ),
               ListItem(
                  title: "小强",
                  page: FloatingActionButtonDemo(),
               ),
               ListItem(
                  title: "PopupMenuButtonDemo",
                  page: PopupMenuButtonDemo(),
               ),
               ListItem(
                  title: "BottemDemo",
                  page: ButtonDemo(),
               ),
            ],
         ),
      );
   }
}

class ButtonDemo extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
      return Scaffold(
         appBar: AppBar(
            title: Text("ButtomDemo"),
         ),
         body: Container(
            padding: EdgeInsets.all(20),
            child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                  Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: <Widget>[
                        FlatButton(
                           onPressed: () {},
                           child: Text("小强"),
                           splashColor: Colors.yellow,
                        ),
                        FlatButton.icon(
                           onPressed: () {},
                           icon: Icon(Icons.add),
                           label: Text("小强"),
                           splashColor: Colors.yellow,
                        ),
                     ],
                  ),
                  Theme(
                     data: Theme.of(context).copyWith(
                        buttonColor: Theme
                            .of(context)
                            .primaryColor,
                        buttonTheme: ButtonThemeData(
                            shape: StadiumBorder(), textTheme: ButtonTextTheme.accent),
                     ),
                     child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                           RaisedButton(
                              onPressed: () {},
                              child: Text("小强"),
                              splashColor: Colors.yellow,
                           ),
                           SizedBox(
                              width: 20,
                           ),
                           RaisedButton.icon(
                              onPressed: () {},
                              icon: Icon(Icons.add),
                              label: Text("小强"),
                              splashColor: Colors.yellow,
                           ),
                        ],
                     ),
                  ),
                  Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: <Widget>[
                        OutlineButton(
                           onPressed: () {}, child: Text("小强"), //点击的渐变颜色
                           splashColor: Colors.yellow,
                           borderSide: BorderSide(color: Colors.red, width: 0.5),
                           shape: StadiumBorder(), //边框的渐变颜色
                           highlightedBorderColor: Colors.yellow,
                        ),
                        SizedBox(
                           width: 20,
                        ),
                        OutlineButton.icon(
                           onPressed: () {},
                           icon: Icon(Icons.add),
                           label: Text("小强"),
                           splashColor: Colors.yellow,
                        ),
                     ],
                  ),
                  Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: <Widget>[
                        Expanded(
                            child: OutlineButton(
                               onPressed: () {}, child: Text("小强"), //点击的渐变颜色
                               splashColor: Colors.yellow,
                               borderSide: BorderSide(color: Colors.red, width: 0.5),
                               shape: StadiumBorder(), //边框的渐变颜色
                               highlightedBorderColor: Colors.yellow,
                            )),
                        SizedBox(
                           width: 20,
                        ),
                        Expanded(
                            flex: 2,
                            child: OutlineButton(
                               onPressed: () {}, child: Text("小强"), //点击的渐变颜色
                               splashColor: Colors.yellow,
                               borderSide: BorderSide(color: Colors.red, width: 0.5),
                               shape: OutlineInputBorder(), //边框的渐变颜色
                               highlightedBorderColor: Colors.yellow,
                            )),
                     ],
                  ),
                  Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: <Widget>[
                        Theme(
                            data: Theme.of(context).copyWith(
                                buttonTheme: ButtonThemeData(
                                   padding: EdgeInsets.symmetric(horizontal: 160.0),
                                )),
                            child: ButtonBar(
                               children: <Widget>[
                                  OutlineButton(
                                     onPressed: () {},
                                     child: Text("小强"),
                                  ),
                                  OutlineButton(
                                     onPressed: () {},
                                     child: Text("小强"),
                                  )
                               ],
                            ))
                     ],
                  )
               ],
            ),
         ),
      );
   }
}

class _WidgetDemo extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
      return Scaffold(
         appBar: AppBar(
            title: Text("_WidgetDemo"),
         ),
         body: Container(
            padding: EdgeInsets.all(20),
            child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                  Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: <Widget>[],
                  )
               ],
            ),
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
