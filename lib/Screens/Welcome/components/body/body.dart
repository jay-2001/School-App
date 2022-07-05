import 'package:flutter/material.dart';
import '/Screens/Welcome/components/body/body_desktop.dart';
import '/Screens/Welcome/components/body/body_mobile.dart';
import '/responsive/responsive.dart';

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
