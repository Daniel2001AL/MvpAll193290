import 'package:flutter/material.dart';
import 'login_option.dart';
import 'logo.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          const Logo_App(),
          Column(children: const <Widget>[
            LoginOption(),
          ]),
        ],
      ),
    );
  }
}
