import 'package:chart_graph/bar_graph/bar_graph.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() {
    return _Homepage();
  }
}

class _Homepage extends State<Homepage> {
  List<double> weeklysummary = [
    4.40,
    2.50,
    42.42,
    10.50,
    100.20,
    88.99,
    90.10,
  ];

  @override
  Widget build(Context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SizedBox(
          height: 400,
          child: BarGraph(weeklysummary),
        ),
      ),
    );
  }
}
