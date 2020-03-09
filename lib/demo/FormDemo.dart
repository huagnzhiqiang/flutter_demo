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
        children: <Widget>[RegisterFormDemo()],
      ),
    ));
  }
}

class RegisterFormDemo extends StatefulWidget {
  @override
  _RegisterFormDemoState createState() => _RegisterFormDemoState();
}

class _RegisterFormDemoState extends State<RegisterFormDemo> {
  var registerKey = GlobalKey<FormState>();
  var userName, password;
  var autovalidate = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: registerKey,
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            TextFormField(
              onSaved: (value) {
                userName = value;
              },
              decoration: InputDecoration(labelText: "账号", helperText: ""),
              validator: validatorUserName,
              autovalidate: autovalidate,
            ),
            TextFormField(
              onSaved: (value) {
                password = value;
              },
              obscureText: true,
              decoration: InputDecoration(labelText: "密码", helperText: ""),
              validator: validatorPasswork,
              autovalidate: autovalidate,
            ),
            SizedBox(
              height: 32.0,
            ),
            Container(
              width: double.infinity,
              height: 40,
              child: RaisedButton(
                shape: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.orange),
                    borderRadius: BorderRadius.circular(8)),
                color: Colors.orange,
                padding: EdgeInsets.all(5),
                child: Text("提交"),
                onPressed: onRegisterPressed,
              ),
            )
          ],
        ),
      ),
    );
  }

  void onRegisterPressed() {
    if (registerKey.currentState.validate()) {
      registerKey.currentState.save();
      debugPrint("userName-->$userName");
      debugPrint("password-->$password");

      Scaffold.of(context).showSnackBar(SnackBar(content: Text("登录中....")));
    } else {
      setState(() {
        autovalidate = true;
      });
    }
  }

  String validatorUserName(String value) {
    if (value.isEmpty) {
      return "账号为空";
    }
    return null;
  }

  String validatorPasswork(String value) {
    if (value.isEmpty) {
      return "密码为空";
    }
    return null;
  }
}

//监听
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

    textEditingController.addListener(() {
      debugPrint("输入-->" + textEditingController.text);
    });
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
