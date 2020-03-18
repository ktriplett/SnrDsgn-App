import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import 'package:senior_design/screens/node_display_screen/node.dart';

class TimeChart extends StatelessWidget {
  final List<Node> seriesList;

  TimeChart(this.seriesList);

  @override
  Widget build(BuildContext context) {
    return new charts.LineChart(_fillSeries());
  }

  List<charts.Series<Node, double>> _fillSeries() {
    final data = seriesList;

    return [
      new charts.Series<Node, double>(
        id: 'Nodes',
        colorFn: (_, __) => charts.MaterialPalette.green.shadeDefault,
        domainFn: (Node node, _) => node.getTime,
        measureFn: (Node node, _) => node.getTemp,
        data: data,
      )
    ];
  }
}
