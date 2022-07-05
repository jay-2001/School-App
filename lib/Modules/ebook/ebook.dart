import 'package:flutter/material.dart';
import './Homepage.dart';


class Ebook extends StatelessWidget {
  static String id = 'ebook';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      title: "ebookUI",
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}

