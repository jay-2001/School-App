import 'package:flutter/material.dart';
import '/Screens/Login/components/body/body.dart';

class LoginScreen extends StatefulWidget {
  static String id = 'login_screen';
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}

