import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

/*
 * @author 小强
 *
 * @time 2020/4/1  15:25
 *
 * @desc 状态管理
 *
 */

class StateManagementDemo extends StatelessWidget {

    @override
    Widget build(BuildContext context) {
        return ScopedModel(model: CounterModel(),
            child: Scaffold(
                appBar: AppBar(title: Text("状态管理"),),
                body: CounterWrapper(),
                floatingActionButton: ScopedModelDescendant<CounterModel>(
                    builder: (context, child, model,) =>
                        FloatingActionButton(
                            onPressed: model.increaseCount, child: Icon(Icons.add)))));
    }


}


class CounterWrapper extends StatelessWidget {


    @override
    Widget build(BuildContext context) {
        return Center(
            child: Counter(),
        );
    }
}

class Counter extends StatelessWidget {


    @override
    Widget build(BuildContext context) {
        return ScopedModelDescendant<CounterModel>(
            builder: (context, child, CounterModel model,) =>
                ActionChip(
                    onPressed: model.increaseCount, label: Text("${model.count}")));
    }
}

class CounterProvider extends InheritedWidget {

    final int count;

    final VoidCallback setOnPressed;

    final Widget child;


    CounterProvider(this.count, this.setOnPressed, this.child) :super(child: child);

    @override
    bool updateShouldNotify(InheritedWidget oldWidget) => true;

    static CounterProvider of(BuildContext context) =>
        context.inheritFromWidgetOfExactType(CounterProvider);
}


class CounterModel extends Model {
    int _count = 0;

    int get count => _count;

    void increaseCount() {
        _count += 1;
        notifyListeners();
    }

}

