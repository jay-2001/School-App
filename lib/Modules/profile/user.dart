import 'package:flutter/cupertino.dart';

class User {
  final String imagePath;
  final String name;
  final String email;
  final String about;
  final String mobile;
  final String blood;
  final String address;
  final String city;
  final bool isDarkMode;

  const User({
    @required this.imagePath,
    @required this.name,
    @required this.email,
    @required this.about,
    @required this.isDarkMode,
    @required this.mobile,
    @required this.blood,
    @required this.city,
    @required this.address,
  });
}
