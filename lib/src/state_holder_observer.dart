import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'state_holder_controller.dart';

typedef StateHolderBuilder<S, C extends Controller> = Widget Function(
    BuildContext context, S state, C controller);

class StateObserver<S, C extends Controller> extends StatelessWidget {
  final String? name;

  final StateHolderBuilder<S, C> builder;

  final Controller controller;

  StateObserver(
      {Key? key, this.name, required this.builder, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Observer(
        name: name,
        key: key,
        builder: (obsContext) {
          return builder(
              obsContext, (controller.state as S), (controller as C));
        });
  }
}
