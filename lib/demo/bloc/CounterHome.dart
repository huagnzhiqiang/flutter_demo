import 'package:flutter/material.dart';

/*
 * @author 小强
 *
 * @time 2020/9/22  16:03
 *
 * @desc 
 *
 */

class CounterHome extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
      var counterBloc = CounterProvider
          .of(context)
          .counterBloc;

      return Center(
         child: ActionChip(label: new Text("0"), onPressed: () {
            counterBloc.log();
         }),
      );
   }
}

class CounterActionButton extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
      var counterBloc = CounterProvider
          .of(context)
          .counterBloc;

      return FloatingActionButton(
         onPressed: () {
            counterBloc.log();
         },
         child: Icon(Icons.add),
      );
   }
}

class CounterProvider extends InheritedWidget {
   final Widget child;
   final CounterBloc counterBloc;

   CounterProvider({this.child, this.counterBloc}) : super(child: child);

   static CounterProvider of(BuildContext context) {
      return context.dependOnInheritedWidgetOfExactType<CounterProvider>();
   }

   @override
   bool updateShouldNotify(InheritedWidget oldWidget) {
      return true;
   }
}

class CounterBloc {
   void log() {
      print("小强");
   }
}
