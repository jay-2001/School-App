import 'package:flutter/material.dart';
import '/Screens/Signup/components/body/body_mobile.dart';
import '/Screens/Signup/components/body/body_desktop.dart';
import '/responsive/responsive.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: BodyMobile(),
      tablet: BodyDesktop(),
    );
  }
}
