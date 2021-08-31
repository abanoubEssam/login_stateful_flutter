import 'package:flutter/material.dart';
import 'package:login_stateful/src/screens/login_screen.dart';

class App extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'log me in',
      home: Scaffold(
        body: LoginScreen(),
      ),
    );
  }
  
}