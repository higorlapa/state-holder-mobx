import 'package:flutter/material.dart';
import 'package:state_holder_mobx/state_holder_mobx.dart';

import 'controller/counter_controller.dart';
import 'controller/state/counter_state_holder.dart';

class CounterPage extends StatefulWidget {
  final CounterController controller;

  CounterPage({required this.controller});

  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("StateHolder Mobx Counter"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            StateObserver<CounterStateHolder, CounterController>(
              controller: widget.controller,
              builder: (context, state, controller) {
                return Text(
                  '${state.count.value}',
                  style: Theme.of(context).textTheme.headline4,
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          widget.controller.onIncrementButtonTap();
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
