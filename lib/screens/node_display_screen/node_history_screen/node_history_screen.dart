import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import 'package:senior_design/screens/node_display_screen/node.dart';
import 'package:senior_design/screens/node_display_screen/node_history_screen/line_chart.dart';
import 'package:senior_design/screens/node_display_screen/node_states.dart';

class NodeHistoryScreen extends StatelessWidget {
  final List<Node> data = [
    new Node(1, 68.7, 40.2, 700, 0),
    new Node(1, 69.2, 40.2, 720, 1),
    new Node(1, 69.4, 40.2, 730, 2),
    new Node(1, 68.5, 40.2, 700, 3),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Node History Screen"),
        ),
        body: Center(
          child: Container(
            child: Column(
              children: <Widget>[
                Flexible(
                  flex: 1,
                  child: Container()
                ),
                Flexible(
                  flex: 3,
                  child: TimeChart(data)
                ),
                Flexible(
                  flex: 1,
                  child: Container()
                ),
              ],
            )
          )
        )
    );
  }
}