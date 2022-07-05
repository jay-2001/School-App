import 'package:flutter/material.dart';
import '/Screens/Login/components/background.dart';
import '/Screens/Signup/signup_screen.dart';
import '/components/already_have_an_account_acheck.dart';
import '/components/rounded_button.dart';
import '/components/rounded_input_field.dart';
import '/components/rounded_password_field.dart';
import 'package:flutter_svg/svg.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flash_chat/Home/home.dart';

class BodyMobile extends StatefulWidget {
  @override
  State<BodyMobile> createState() => _BodyMobileState();
}

class _BodyMobileState extends State<BodyMobile> {
  final _auth = FirebaseAuth.instance;
  String email;
  String password;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/login.svg",
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {
                email = value;
                print(email);
              },
            ),
            RoundedPasswordField(
              onChanged: (value) {
                password = value;
                print(password);
              },
            ),
            RoundedButton(
              text: "LOGIN",
              press : () async{
                try {
                  final user = await _auth.signInWithEmailAndPassword(
                      email: email, password: password);
                  print(user.user.email);
                  if (user != null) {
                    Navigator.pushNamed(context, HomeScreen.id);
                  }
                }
                catch(e){
                  print(e);
                }
              },
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
