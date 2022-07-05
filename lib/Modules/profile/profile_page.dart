import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flash_chat/Modules/profile/user.dart';
import 'package:flash_chat/Modules/profile/edit_profile_page.dart';
import 'package:flash_chat/Modules/profile/user_preferences.dart';
import 'package:flash_chat/Modules/profile/appbar_widget.dart';
import 'package:flash_chat/Modules/profile/button_widget.dart';
import 'package:flash_chat/Modules/profile/numbers_widget.dart';
import 'package:flash_chat/Modules/profile/profile_widget.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.myUser;

    return ThemeSwitchingArea(
      child: Builder(
        builder: (context) => Scaffold(
          appBar: buildAppBar(context),
          body: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              ProfileWidget(
                imagePath: user.imagePath,
                onClicked: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => EditProfilePage()),
                  );
                },
              ),
              const SizedBox(height: 24),
              buildName(user),

              const SizedBox(height: 24),
              NumbersWidget(),
              const SizedBox(height: 48),
              buildAbout(user),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildName(User user) => Column(
        children: [
          Text(
            user.name,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const SizedBox(height: 4),
          Text(
            user.email,
            style: TextStyle(color: Colors.grey),
          )
        ],
      );



  Widget buildAbout(User user) => Container(
        padding: EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Text(
            //   'About',
            //   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            // ),
            // const SizedBox(height: 16),
            // Text(
            //   user.about,
            //   style: TextStyle(fontSize: 16, height: 1.4),
            // ),
            Text(
              'Mobile Number',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            Text(
              user.mobile,
              style: TextStyle(fontSize: 16, height: 1.4),
            ),
            const SizedBox(height: 10),
            Text(
              'Blood Group',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            Text(
              user.blood,
              style: TextStyle(fontSize: 16, height: 1.4),
            ),
            const SizedBox(height: 10),
            Text(
              'Address',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            Text(
              user.address,
              style: TextStyle(fontSize: 16, height: 1.4),
            ),
            const SizedBox(height: 10),
            Text(
              'City',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            Text(
              user.city,
              style: TextStyle(fontSize: 16, height: 1.4),
            ),
          ],
        ),
      );
}
