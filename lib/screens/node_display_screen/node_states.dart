import 'package:flutter/material.dart';
import 'package:senior_design/screens/node_display_screen/node.dart';

class NodeStates extends ChangeNotifier {
  void displayHistory(Node node)
  {
    print(node.getNum);
  }
}