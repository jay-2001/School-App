import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:async';
import 'dart:math';
import 'dart:ui';

class ProfileTile extends StatelessWidget {
  final title;
  final subtitle;
  final textColor;
  ProfileTile({this.title, this.subtitle, this.textColor = Colors.black});
  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          title,
          style: TextStyle(
              fontSize: 20.0, fontWeight: FontWeight.w700, color: textColor),
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          subtitle,
          style: TextStyle(
              fontSize: 15.0, fontWeight: FontWeight.normal, color: textColor),
        ),
      ],
    );
  }
}
class UIData {
  //routes
  static const String homeRoute = "/home";
  static const String profileOneRoute = "/View Profile";
  static const String profileTwoRoute = "/Profile 2";
  static const String notFoundRoute = "/No Search Result";
  static const String timelineOneRoute = "/Feed";
  static const String timelineTwoRoute = "/Tweets";
  static const String settingsOneRoute = "/Device Settings";
  static const String shoppingOneRoute = "/Shopping List";
  static const String shoppingTwoRoute = "/Shopping Details";
  static const String shoppingThreeRoute = "/Product Details";
  static const String paymentOneRoute = "/Credit Card";
  static const String paymentTwoRoute = "/Payment Success";
  static const String loginOneRoute = "/Login With OTP";
  static const String loginTwoRoute = "/Login 2";
  static const String dashboardOneRoute = "/Dashboard 1";
  static const String dashboardTwoRoute = "/Dashboard 2";

  //strings
  static const String appName = "Flutter UIKit";

  //fonts
  static const String quickFont = "Quicksand";
  static const String ralewayFont = "Raleway";
  static const String quickBoldFont = "Quicksand_Bold.otf";
  static const String quickNormalFont = "Quicksand_Book.otf";
  static const String quickLightFont = "Quicksand_Light.otf";

  //images
  static const String imageDir = "assets/images";
  static const String pkImage = "$imageDir/pk.jpg";
  static const String profileImage = "$imageDir/profile.jpg";
  static const String blankImage = "$imageDir/blank.jpg";
  static const String dashboardImage = "$imageDir/dashboard.jpg";
  static const String loginImage = "$imageDir/login.jpg";
  static const String paymentImage = "$imageDir/payment.jpg";
  static const String settingsImage = "$imageDir/setting.jpeg";
  static const String shoppingImage = "$imageDir/shopping.jpeg";
  static const String timelineImage = "$imageDir/timeline.jpeg";
  static const String verifyImage = "$imageDir/verification.jpg";

  //login
  static const String enter_code_label = "Phone Number";
  static const String enter_code_hint = "10 Digit Phone Number";
  static const String enter_otp_label = "OTP";
  static const String enter_otp_hint = "4 Digit OTP";
  static const String get_otp = "Get OTP";
  static const String resend_otp = "Resend OTP";
  static const String login = "Login";
  static const String enter_valid_number = "Enter 10 digit phone number";
  static const String enter_valid_otp = "Enter 4 digit otp";

  //gneric
  static const String error = "Error";
  static const String success = "Success";
  static const String ok = "OK";
  static const String forgot_password = "Forgot Password?";
  static const String something_went_wrong = "Something went wrong";
  static const String coming_soon = "Coming Soon";

  static const MaterialColor ui_kit_color = Colors.grey;

//colors
  static List<Color> kitGradients = [
    // new Color.fromRGBO(103, 218, 255, 1.0),
    // new Color.fromRGBO(3, 169, 244, 1.0),
    // new Color.fromRGBO(0, 122, 193, 1.0),
    Colors.blueGrey.shade800,
    Colors.black87,
  ];
  static List<Color> kitGradients2 = [
    Colors.cyan.shade600,
    Colors.blue.shade900
  ];

  //randomcolor
  static final Random _random = new Random();

  /// Returns a random color.
  static Color next() {
    return new Color(0xFF000000 + _random.nextInt(0x00FFFFFF));
  }
}

class CreditCardBloc {
  final ccInputController = StreamController<String>();
  final expInputController = StreamController<String>();
  final cvvInputController = StreamController<String>();
  final nameInputController = StreamController<String>();

  Sink<String> get ccInputSink => ccInputController.sink;
  Sink<String> get expInputSink => expInputController.sink;
  Sink<String> get cvvInputSink => cvvInputController.sink;
  Sink<String> get nameInputSink => nameInputController.sink;

  final ccOutputController = StreamController<String>();
  final expOutputController = StreamController<String>();
  final cvvOutputController = StreamController<String>();
  final nameOutputController = StreamController<String>();

  Stream<String> get ccOutputStream => ccOutputController.stream;
  Stream<String> get expOutputStream => expOutputController.stream;
  Stream<String> get cvvOutputStream => cvvOutputController.stream;
  Stream<String> get nameOutputStream => nameOutputController.stream;

  CreditCardBloc() {
    ccInputController.stream.listen(onCCInput);
    expInputController.stream.listen(onExpInput);
    cvvInputController.stream.listen(onCvvInput);
    nameInputController.stream.listen(onNameInput);
  }

  onCCInput(String input) {
    ccOutputController.add(input.toString());
  }

  onExpInput(String input) {
    expOutputController.add(input);
  }

  onCvvInput(String input) {
    cvvOutputController.add(input);
  }

  onNameInput(String input) {
    nameOutputController.add(input);
  }

  void ccFormat(String s) {
    print(s);
    ccInputSink.add(s);
  }

  void dispose() {
    ccInputController?.close();
    cvvInputController?.close();
    expInputController?.close();
    nameInputController?.close();
  }
}

class Payment extends StatelessWidget {
  static String id = 'payment';
  BuildContext _context;
  CreditCardBloc cardBloc;
  MaskedTextController ccMask =
  MaskedTextController(mask: "0000 0000 0000 0000");
  MaskedTextController expMask = MaskedTextController(mask: "00/00");
  Widget bodyData() => SingleChildScrollView(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[creditCardWidget(), fillEntries()],
    ),
  );
  Widget creditCardWidget() {
    var deviceSize = MediaQuery.of(_context).size;
    return Container(
      height: deviceSize.height * 0.3,
      color: Colors.grey.shade300,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          clipBehavior: Clip.antiAlias,
          elevation: 3.0,
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: UIData.kitGradients)),
              ),
              Opacity(
                opacity: 0.1,
                child: Image.asset(
                  "assets/images/map.png",
                  fit: BoxFit.cover,
                ),
              ),
              MediaQuery.of(_context).orientation == Orientation.portrait
                  ? cardEntries()
                  : FittedBox(
                child: cardEntries(),
              ),
              Positioned(
                right: 10.0,
                top: 10.0,
                child: Icon(
                  FontAwesomeIcons.ccVisa,
                  size: 30.0,
                  color: Colors.white,
                ),
              ),
              Positioned(
                right: 10.0,
                bottom: 10.0,
                child: StreamBuilder<String>(
                  stream: cardBloc.nameOutputStream,
                  initialData: "Your Name",
                  builder: (context, snapshot) => Text(
                    snapshot.data.length > 0 ? snapshot.data : "Your Name",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: UIData.ralewayFont,
                        fontSize: 20.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget cardEntries() => Padding(
    padding: const EdgeInsets.all(16.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        StreamBuilder<String>(
            stream: cardBloc.ccOutputStream,
            initialData: "**** **** **** ****",
            builder: (context, snapshot) {
              snapshot.data.length > 0
                  ? ccMask.updateText(snapshot.data)
                  : null;
              return Text(
                snapshot.data.length > 0
                    ? snapshot.data
                    : "**** **** **** ****",
                style: TextStyle(color: Colors.white, fontSize: 22.0),
              );
            }),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            StreamBuilder<String>(
                stream: cardBloc.expOutputStream,
                initialData: "MM/YY",
                builder: (context, snapshot) {
                  snapshot.data.length > 0
                      ? expMask.updateText(snapshot.data)
                      : null;
                  return ProfileTile(
                    textColor: Colors.white,
                    title: "Expiry",
                    subtitle:
                    snapshot.data.length > 0 ? snapshot.data : "MM/YY",
                  );
                }),
            SizedBox(
              width: 30.0,
            ),
            StreamBuilder<String>(
                stream: cardBloc.cvvOutputStream,
                initialData: "***",
                builder: (context, snapshot) => ProfileTile(
                  textColor: Colors.white,
                  title: "CVV",
                  subtitle:
                  snapshot.data.length > 0 ? snapshot.data : "***",
                )),
          ],
        ),
      ],
    ),
  );

  Widget fillEntries() => Padding(
    padding: const EdgeInsets.all(16.0),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        TextField(
          controller: ccMask,
          keyboardType: TextInputType.number,
          maxLength: 19,
          style: TextStyle(
              fontFamily: UIData.ralewayFont, color: Colors.black),
          onChanged: (out) => cardBloc.ccInputSink.add(ccMask.text),
          decoration: InputDecoration(
              labelText: "Credit Card Number",
              labelStyle: TextStyle(fontWeight: FontWeight.bold),
              border: OutlineInputBorder()),
        ),
        TextField(
          controller: expMask,
          keyboardType: TextInputType.number,
          maxLength: 5,
          style: TextStyle(
              fontFamily: UIData.ralewayFont, color: Colors.black),
          onChanged: (out) => cardBloc.expInputSink.add(expMask.text),
          decoration: InputDecoration(
              labelStyle: TextStyle(
                fontWeight: FontWeight.bold,
              ),
              labelText: "MM/YY",
              border: OutlineInputBorder()),
        ),
        TextField(
          keyboardType: TextInputType.number,
          maxLength: 3,
          style: TextStyle(
              fontFamily: UIData.ralewayFont, color: Colors.black),
          onChanged: (out) => cardBloc.cvvInputSink.add(out),
          decoration: InputDecoration(
              labelStyle: TextStyle(fontWeight: FontWeight.bold),
              labelText: "CVV",
              border: OutlineInputBorder()),
        ),
        TextField(
          keyboardType: TextInputType.text,
          maxLength: 20,
          style: TextStyle(
              fontFamily: UIData.ralewayFont, color: Colors.black),
          onChanged: (out) => cardBloc.nameInputSink.add(out),
          decoration: InputDecoration(
              labelStyle: TextStyle(
                fontWeight: FontWeight.bold,
              ),
              labelText: "Name on card",
              border: OutlineInputBorder()),
        ),
      ],
    ),
  );

  Widget floatingBar() => Ink(
    decoration: ShapeDecoration(
        shape: StadiumBorder(),
        gradient: LinearGradient(colors: UIData.kitGradients)),
    child: FloatingActionButton.extended(
      onPressed: () {},
      backgroundColor: Colors.transparent,
      icon: Icon(
        FontAwesomeIcons.amazonPay,
        color: Colors.white,
      ),
      label: Text(
        "Continue",
        style: TextStyle(color: Colors.white),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    _context = context;
    cardBloc = CreditCardBloc();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF6F35A5),
        centerTitle: false,
        title: Text("Credit Card"),
      ),
      body: bodyData(),
      floatingActionButton: floatingBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}