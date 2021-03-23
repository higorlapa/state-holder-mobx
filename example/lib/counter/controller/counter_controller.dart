import 'package:state_holder_mobx/state_holder_mobx.dart';

import 'state/counter_state_holder.dart';

abstract class CounterController implements Controller {
  CounterStateHolder get state;

  void onIncrementButtonTap();
}

class CounterControllerImpl implements Controller, CounterController {
  @override
  CounterStateHolder get state => _state;

  final _state = CounterStateHolder();

  void onIncrementButtonTap() {
    _state.increment();
  }
}
