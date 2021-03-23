import 'package:mobx/mobx.dart';
import 'package:state_holder_mobx/state_holder_mobx.dart';

class CounterStateHolder extends StateHolder {
  Observable<int> count = Observable(0);

  late Action _incrementAction;

  CounterStateHolder() {
    _incrementAction = Action(_increment);
  }

  void increment() {
    _incrementAction();
  }

  void _increment() {
    count.value++;
  }
}
