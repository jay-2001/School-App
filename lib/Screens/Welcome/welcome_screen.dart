import 'package:flash_chat/Screens/Login/components/body/body_mobile.dart';
import 'package:flutter/material.dart';
import 'components/body/body.dart';

class WelcomeScreen extends StatelessWidget {
  static String id = 'welcome_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
