import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            'Login',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30.0, color: Colors.blue),
          )
        ],
      ),
    );
  }
}
