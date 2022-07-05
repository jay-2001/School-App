import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flash_chat/Modules/query/screens/welcome_screen.dart';
import 'package:flash_chat/Modules/query/screens/login_screen.dart';
import 'package:flash_chat/Modules/query/screens/registration_screen.dart';
import 'package:flash_chat/Modules/query/screens/chat_screen.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';


class Query extends StatelessWidget {
  static String id = 'query';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WelcomeScreen(),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id : (context) => WelcomeScreen(),
        LoginScreen.id : (context) => LoginScreen(),
        RegistrationScreen.id : (context) => RegistrationScreen(),
        ChatScreen.id : (context) => ChatScreen(),
      },
    );
  }
}
