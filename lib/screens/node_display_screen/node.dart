import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:senior_design/screens/node_display_screen/node_states.dart';

class Node extends StatelessWidget {
  final int _node_num, _node_bright;
  final double _node_temp, _node_humidity, _date_time;

  Node(this._node_num, this._node_temp, this._node_humidity, this._node_bright, this._date_time);

  @override
  Widget build(BuildContext context) {
    final nodeStates = Provider.of<NodeStates>(context);
    return GestureDetector(
      child: Container(
        margin: const EdgeInsets.all(30.0),
        color: Colors.lightGreen,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(
                text: "Node #$_node_num",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0, fontWeight: FontWeight.bold,
                )
              )
            ),
            RichText(
              text: TextSpan(
                text: "Temp: $_node_temp°F\nHumidity: $_node_humidity%\nLight: $_node_bright lm",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0, fontWeight: FontWeight.bold,
                )
              )
            )
          ]
        ),
      ),
      onLongPress: (){
        nodeStates.displayHistory(this);
        Navigator.pushNamed(context, '/nodes/history');
      },
    );
  }
  int get getNum => _node_num;
  double get getTemp => _node_temp;
  double get getTime => _date_time;

}