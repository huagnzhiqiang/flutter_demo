import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "小强",
        textDirection: TextDirection.ltr,
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 50, color: Colors.red),
      ),
    );
  }
}
