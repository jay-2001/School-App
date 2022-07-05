import 'package:flash_chat/Home/home.dart';
import 'package:flash_chat/verify.dart';
import 'package:flutter/material.dart';
import 'Screens/Welcome/welcome_screen.dart';
import 'constants.dart';
import 'package:firebase_core/firebase_core.dart';
import 'Screens/Signup/signup_screen.dart';
import 'Screens/Login/login_screen.dart';
import 'Modules/profile/Profile.dart';
import 'package:flutter/services.dart';
import 'Modules/quiz/quiz.dart';
import 'Modules/calender/calender.dart';
import 'Modules/pdf/pdf.dart';
import 'Modules/gallary/gallary.dart';
import 'Modules/leave/leave.dart';
import 'Modules/payment/payment.dart';
import 'package:flash_chat/Modules/player/player.dart';
import 'package:flash_chat/Modules/todo/todo.dart';
import 'package:flash_chat/Modules/ebook/ebook.dart';
import 'package:flash_chat/Modules/query/query.dart';
import 'package:flash_chat/Modules/map/map.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  //Stripe.publishableKey = 'pk_test_51LBv0dSF8O13keWq7sOUDFman9O1dsm0pceZ66hE6mm9coNwVTmlffc00MmzUPDIitNL0cmqofBKr10UvI8KbhNO00MV30Fntf'; // Replace with your publishable key
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'VIDHYALAY',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: WelcomeScreen(),
      initialRoute: WelcomeScreen.id,

      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        SignUpScreen.id: (context) => SignUpScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        HomeScreen.id:(context) => HomeScreen(),
        Verify.id:(context) => Verify(),
        Profile.id:(context) => Profile(),
        Quiz.id:(context) => Quiz(),
        Calendar.id:(context) => Calendar(),
        PDF.id:(context) => PDF(),
        Gallary.id:(context) => Gallary(),
        Leave.id:(context) => Leave(),
        Payment.id:(context) => Payment(),
        Player.id:(context) => Player(),
        Todo.id:(context) => Todo(),
        Ebook.id:(context) => Ebook(),
        Query.id:(context) => Query(),
        Map.id:(context) => Map(),
      },
    );
  }
}
