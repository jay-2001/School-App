import 'package:flutter/material.dart';
import '/Screens/Login/components/background.dart';
import '/Screens/Login/login_screen.dart';
import '/Screens/Signup/signup_screen.dart';
import '/components/rounded_button.dart';
import 'package:flash_chat/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BodyDesktop extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: size.width * 0.1,
        ),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: SvgPicture.asset(
                "assets/icons/chat.svg",
                height: size.height * 0.65,
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Flutter Auth UI',
                    style: TextStyle(
                      fontSize: size.height * 0.075,
                      fontWeight: FontWeight.bold,
                      color: kPrimaryColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: size.height * 0.1,
                  ),
                  RoundedButton(
                    text: "LOGIN",
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return LoginScreen();
                          },
                        ),
                      );
                    },
                    height: size.height * 0.07,
                  ),
                  RoundedButton(
                    text: "SIGN UP",
                    color: kPrimaryLightColor,
                    textColor: Colors.black,
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
                    height: size.height * 0.07,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
