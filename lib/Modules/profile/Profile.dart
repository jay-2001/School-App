import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:flash_chat/Modules/profile/profile_page.dart';
import 'package:flash_chat/Modules/profile/themes.dart';
import 'package:flash_chat/Modules/profile/user_preferences.dart';
//import 'package:theme_provider/theme_provider.dart';


// Future Profile() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await SystemChrome.setPreferredOrientations([
//     DeviceOrientation.portraitUp,
//     DeviceOrientation.portraitDown,
//   ]);
//
//   runApp(Profile());
// }

class Profile extends StatelessWidget{
  static final String title = 'User Profile';
  static String id = 'Profile';
  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.myUser;

    return ThemeProvider(
      initTheme: user.isDarkMode ? MyThemes.darkTheme : MyThemes.lightTheme,
      child: Builder(
        builder: (context) => MaterialApp(
          debugShowCheckedModeBanner: false,
          //theme: ThemeProvider.themeOf(context),
          title: title,
          home: ProfilePage(),
        ),
      ),
    );
  }
}


//class MyApp extends StatelessWidget {
  // static final String title = 'User Profile';
  //
  //
  // @override
  // Widget build(BuildContext context) {
  //   final user = UserPreferences.myUser;
  //
  //   return ThemeProvider(
  //     initTheme: user.isDarkMode ? MyThemes.darkTheme : MyThemes.lightTheme,
  //     child: Builder(
  //       builder: (context) => MaterialApp(
  //         debugShowCheckedModeBanner: false,
  //         //theme: ThemeProvider.of(context),
  //         title: title,
  //         home: ProfilePage(),
  //       ),
  //     ),
  //   );
  // }
//}
