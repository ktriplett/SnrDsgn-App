import 'package:flutter/material.dart';

class Node extends StatelessWidget {
  final int _node_num, _node_bright;
  final double _node_temp, _node_humidity;

  Node(this._node_num, this._node_temp, this._node_humidity, this._node_bright);

  @override
  Widget build(BuildContext context) {
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
      onTap: () {
      }
    );
  }
}