import 'package:flutter/material.dart';

import '../widget/w1.dart';
import '../widget/w2.dart';
import '../widget/w3.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double value = 0.0;
  @override
  void refresh() {
    setState(() {
      value = 0;
    });
  }

  void _increment() {
    setState(() {
      value += 0.1;
      value = double.parse(value.toStringAsFixed(1));
    });
  }

  void restar() {
    setState(() {
      value -= 0.1;
      value = double.parse(value.toStringAsFixed(1));
    });
  }

  void _increment2() {
    setState(() {
      value += 1;
      value = double.parse(value.toStringAsFixed(1));
    });
  }

  void restar2() {
    setState(() {
      value -= 1;
      value = double.parse(value.toStringAsFixed(1));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
          child: Column(
        children: [
          IconButton(
              onPressed: refresh,
              icon: Icon(Icons.refresh),
              key: Key('Refresh')),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              W1(
                value: value,
                callback: _increment,
                restar: restar,
              ),
              W2(),
              W3(
                value: value,
                add: _increment2,
                rest: restar2,
              )
            ],
          ),
        ],
      )),
    );
  }
}
