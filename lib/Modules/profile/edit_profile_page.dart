import 'dart:io';

import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:flash_chat/Modules/profile/user.dart';
import 'package:flash_chat/Modules/profile/user_preferences.dart';
import 'package:flash_chat/Modules/profile/appbar_widget.dart';
import 'package:flash_chat/Modules/profile/button_widget.dart';
import 'package:flash_chat/Modules/profile/profile_widget.dart';
import 'package:flash_chat/Modules/profile/textfield_widget.dart';

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  User user = UserPreferences.myUser;

  String Name = '';


  @override
  Widget build(BuildContext context) => ThemeSwitchingArea(
        child: Builder(
          builder: (context) => Scaffold(
            appBar: buildAppBar(context),
            body: ListView(
              padding: EdgeInsets.symmetric(horizontal: 32),
              physics: BouncingScrollPhysics(),
              children: [
                ProfileWidget(
                  imagePath: user.imagePath,
                  isEdit: true,
                  onClicked: () async {

                  },
                ),
                const SizedBox(height: 24),
                TextFieldWidget(
                  label: 'Full Name',
                  text: Name,
                  onChanged: (name) {
                    setState((){
                      Name = name;
                    });
                  },
                ),
                const SizedBox(height: 24),
                TextFieldWidget(
                  label: 'Email',
                  text: user.email,
                  onChanged: (email) {},
                ),
                const SizedBox(height: 24),
                TextFieldWidget(
                  label: 'Mobile Number',
                  text: user.mobile,
                  onChanged: (mobile) {},
                ),
                const SizedBox(height: 24),
                TextFieldWidget(
                  label: 'Blood Group',
                  text: user.blood,
                  onChanged: (mobile) {},
                ),
                const SizedBox(height: 24),
                TextFieldWidget(
                  label: 'Address',
                  text: user.address,
                  onChanged: (mobile) {},
                ),
                const SizedBox(height: 24),
                TextFieldWidget(
                  label: 'City',
                  text: user.city,
                  onChanged: (mobile) {},
                ),
              ],
            ),
          ),
        ),
      );
}
