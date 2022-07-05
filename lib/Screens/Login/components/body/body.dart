import 'package:flutter/material.dart';
import '/responsive/responsive.dart';
import '/Screens/Login/components/body/body_mobile.dart';
import '/Screens/Login/components/body/body_desktop.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: BodyMobile(),
      tablet: BodyDesktop(),
      desktop: BodyDesktop(),
    );
  }
}
