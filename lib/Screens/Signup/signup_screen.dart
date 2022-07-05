import 'package:flutter/material.dart';
import '/Screens/Signup/components/body/body.dart';

class SignUpScreen extends StatelessWidget {
  static String id = 'signup_screen';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Body(),
    );
  }
}
