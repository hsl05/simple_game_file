import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text('Hi, Boss',
          style: TextStyle(color: Colors.white, fontSize: 20)),),
    );
  }
}
