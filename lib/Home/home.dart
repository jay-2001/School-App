import 'package:flash_chat/verify.dart';
import 'package:flutter/material.dart';
import 'package:flash_chat/Home/icon.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flash_chat/Home/reusablecard.dart';
import 'package:flash_chat/Modules/profile/Profile.dart';
import 'package:flash_chat/Modules/quiz/quiz.dart';
import 'package:flash_chat/Modules/calender/calender.dart';
import 'package:flash_chat/Modules/pdf/pdf.dart';
import 'package:flash_chat/Modules/gallary/gallary.dart';
import 'package:flash_chat/Modules/leave/leave.dart';
import 'package:flash_chat/Modules/payment/payment.dart';
import 'package:flash_chat/Modules/player/player.dart';
import 'package:flash_chat/Modules/todo/todo.dart';
import 'package:flash_chat/Modules/ebook/ebook.dart';
import 'package:flash_chat/Modules/query/query.dart';
import 'package:flash_chat/Modules/map/map.dart';

class HomeScreen extends StatefulWidget {
  static String id = 'home';
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
    TextButton.styleFrom(primary: Theme.of(context).colorScheme.onPrimary);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF6F35A5),
        title: Text(
          'VIDHYALAYA',
          style: TextStyle(
            textBaseline: TextBaseline.ideographic,
          ),
        ),


      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children:<Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Reusable(
                    onPress: () {
                      Navigator.pushNamed(context,Profile.id);
                    },
                    color: Colors.white,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset('assets/images/dashboard.png',scale: 6,),
                        SizedBox(height: 3,),
                        Text('Dashboard',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Reusable(
                    onPress: () {
                      Navigator.pushNamed(context,Quiz.id);
                    },
                    color: Colors.white,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset('assets/images/quiz.png',scale: 6,),
                        SizedBox(height: 3,),
                        Text('Quiz',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Reusable(
                    onPress: () {
                      Navigator.pushNamed(context,Calendar.id);
                    },
                    color: Colors.white,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset('assets/images/calendar.png',scale: 6,),
                        SizedBox(height: 3,),
                        Text('Calendar',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Reusable(
                    onPress: () {
                      Navigator.pushNamed(context,PDF.id);
                    },
                    color: Colors.white,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset('assets/images/article.png',scale: 6,),
                        SizedBox(height: 3,),
                        Text('Upload',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Reusable(
                    onPress: () {
                      Navigator.pushNamed(context,Gallary.id);
                    },
                    color: Colors.white,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset('assets/images/gallery.png',scale: 6,),
                        Text('Album',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Reusable(
                    onPress: () {
                      Navigator.pushNamed(context,Leave.id);
                    },
                    color: Colors.white,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset('assets/images/leave.png',scale: 6,),
                        Text('Leave',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Reusable(
                    onPress: () {
                      Navigator.pushNamed(context,Payment.id);
                    },
                    color: Colors.white,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset('assets/images/credit-card.png',scale: 6,),
                        Text('Fees',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Reusable(
                    onPress: () {
                      Navigator.pushNamed(context,Player.id);
                    },
                    color: Colors.white,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset('assets/images/video-camera.png',scale: 6,),
                          Text('Recording',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                        ],
                      ),
                  ),
                ),
                Expanded(
                  child: Reusable(
                    onPress: () {
                      Navigator.pushNamed(context,Todo.id);
                    },
                    color: Colors.white,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset('assets/images/to-do-list.png',scale: 6,),
                        Text('Todo',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Reusable(
                    onPress: () {
                      Navigator.pushNamed(context,Ebook.id);
                    },
                    color: Colors.white,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset('assets/images/ebook.png',scale: 6,),
                        Text('Ebook',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Reusable(
                    onPress: () {
                      Navigator.pushNamed(context,Query.id);
                    },
                    color: Colors.white,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset('assets/images/query.png',scale: 6,),
                        Text('Query',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Reusable(
                    onPress: () {
                      Navigator.pushNamed(context,Map.id);
                    },
                    color: Colors.white,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset('assets/images/bus.png',scale: 6,),
                        Text('Bus',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
