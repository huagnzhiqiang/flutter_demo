import 'package:flutter/material.dart';

/*
 * @author 小强
 *
 * @time 2020/3/9  9:09
 *
 * @desc 表单的演示
 *
 */

class FormDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Theme(
        data: Theme.of(context).copyWith(
          primaryColor: Colors.orange,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
//          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[ThemeDemo(), TextFieldDemo()],
        ),
      ),
    );
  }
}

class TextFieldDemo extends StatefulWidget {
  @override
  _TextFieldDemoState createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  var textEditingController = TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
//    textEditingController.text = "初始化第一次的值";

    textEditingController.addListener(
        (){
          debugPrint("输入-->" + textEditingController.text);

        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      //每一次输入都是执行这个方法
      onChanged: (value) {
        debugPrint(value);
      },
      onSubmitted: (value) {
        debugPrint("提交-->" + value);
      },
      textInputAction: TextInputAction.send,
      decoration: InputDecoration(
          icon: Icon(Icons.title),
          hintText: "标题",
          labelText: "Title",
          //去掉边框
//        border: InputBorder.none,
          border: OutlineInputBorder(),
          filled: true,
          fillColor: Colors.yellow),
    );
  }
}

///主题
class ThemeDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).accentColor,
    );
  }
}
