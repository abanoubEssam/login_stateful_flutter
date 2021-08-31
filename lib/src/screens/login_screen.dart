import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {

  @override
  Widget build(BuildContext context) {
    

    
    return Container(
      margin: EdgeInsets.all(20),
      child: SafeArea(
        child: Form(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            emailField(),
            passwordField(),
            SizedBox(height: 20),
            submitButton(),
          ],
        )),
      ),
    );
  }

  Widget emailField() {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Email",
            style: TextStyle(
              fontSize: 18,
              color: Colors.amber[900],
            ),
          ),
          SizedBox(height: 10),
          Material(
            elevation: 10,
            borderRadius: BorderRadius.circular(10),
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: "you@example.com",
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.teal),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget passwordField() {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Password",
            style: TextStyle(
              fontSize: 18,
              color: Colors.amber[900],
            ),
          ),
          SizedBox(height: 10),
          Material(
            elevation: 10,
            borderRadius: BorderRadius.circular(10),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "your password",
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.teal),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              obscureText: true,
            ),
          ),
        ],
      ),
    );
  }

  Widget submitButton() {
    return TextButton(
      style: TextButton.styleFrom(
        elevation: 10,
        backgroundColor: Colors.red,
        primary: Colors.white,
        textStyle: TextStyle(
          fontSize: 20,
        ),
      ),
      onPressed: () => print("object"),
      child: Text("login"),
    );
  }
}
