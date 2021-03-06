import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:senior_design/screens/node_display_screen/node.dart';

class NodeDisplayScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Node Display Screen"),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          Node(1,68.7,40.2,20),
          Node(2,69.1,40.1,19),
          Node(3,69.0,40.3,20),
          Node(4,68.5,32.2,721),
          Node(5,68.2,31.0,745),
          Node(6,69.3,31.5,765),
          Node(7,69.1,32.0,100),
          Node(8,68.7,32.4,68),
          Node(9,69.5,30.1,12),
        ]
      )
    );
  }
}
