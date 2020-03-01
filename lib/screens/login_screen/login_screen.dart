import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:senior_design/screens/node_display_screen/node_display_screen.dart';
import 'package:senior_design/screens/login_screen/login_state.dart';


class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final loginState = Provider.of<LoginState>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Senior Design Team 7"),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Flexible(
                flex: 3,
                child: TextField(
                  controller: loginState.userController,
                  style: TextStyle(
                    fontSize: 28,
                  ),
                  decoration: InputDecoration(
                      border: new OutlineInputBorder(
                          borderSide: new BorderSide(color: Colors.lightGreen),
                      ),
                      contentPadding: const EdgeInsets.symmetric(vertical: 35.0, horizontal: 15.0),
                    hintText: 'Username'
                  ),
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                ),
              ),
              Flexible(
                flex: 3,
                child: TextField(
                  controller: loginState.passController,
                  obscureText: true,
                  style: TextStyle(
                    fontSize: 28,
                  ),
                  decoration: InputDecoration(
                    border: new OutlineInputBorder(
                      borderSide: new BorderSide(color: Colors.lightGreen)
                  ),
                    contentPadding: const EdgeInsets.symmetric(vertical: 35.0, horizontal: 15.0),
                    hintText: 'Password'
                  ),
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.visiblePassword,
                ),
              ),
              Flexible(
                flex:1,
                child: Container(),
              ),
              FloatingActionButton.extended(
                onPressed: () {
                  loginState.verify();
                  Navigator.pushNamed(context, '/nodes');
                },
                label: Text("Login"),
                icon: Icon(Icons.arrow_forward_ios),
              ),
              Flexible(
                flex:1,
                child: Container(),
              ),
            ]
          ),
        )
      ),
    );
  }
}