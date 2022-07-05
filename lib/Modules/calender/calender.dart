import 'package:flutter/material.dart';
import 'package:flash_chat/Modules/calender/DemoApp.dart';


class Calendar extends StatefulWidget {
  static String id = 'calender';
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Calendar> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DemoApp(),
    );
  }
}