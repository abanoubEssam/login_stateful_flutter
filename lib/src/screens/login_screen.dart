import 'package:flutter/material.dart';
import 'package:login_stateful/src/mixins/validation_mixin.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> with ValidationMixin{
  final formKey = GlobalKey<FormState>();

  String? email = '';
  String? password = '';


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: SafeArea(
        child: Form(
            key: formKey,
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
              validator: (value) => validateEmail(value),
              onSaved: (String? value) {
                email = value;
                // print(value);
              },
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
              validator: (value) => validatePassword(value),
              onSaved: (String? value) {
                password = value;
              },
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
      onPressed: () {
        if (formKey.currentState?.validate() ?? false) {
          formKey.currentState?.save();
          print({"email": email ,"password": password});
        }
      },
      child: Text("login"),
    );
  }
}
