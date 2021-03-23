import 'package:flutter/material.dart';

import 'counter/controller/counter_controller.dart';
import 'counter/counter_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CounterPage(controller: CounterControllerImpl()),
    );
  }
}
