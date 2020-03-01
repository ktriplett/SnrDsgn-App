import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:senior_design/global_states.dart';
import 'package:senior_design/screens//login_screen/login_screen.dart';
import 'package:senior_design/screens//node_display_screen/node_display_screen.dart';
import 'package:senior_design/screens/login_screen/login_state.dart';

void main() {
  runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => GlobalStates()),
          ChangeNotifierProvider(create: (context) => LoginState()),
        ],
        child: MyApp(),
      ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.lightGreen,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen(),
        '/nodes' : (context) => NodeDisplayScreen()
      }
    ); // MaterialApp
  }
}


