import 'package:flutter/material.dart';
import 'package:stubbbb/WelcomePage.dart';
import 'LoginPage/SignUp.dart';
import 'LoginPage/SplashScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new SafeArea(
          top: true,
          bottom: true,
          child: new Directionality(textDirection: TextDirection.rtl, child: new WelcomePage())),
    );

//        initialRoute: '/SplashScreen',
//        routes: {
//          '/HomePage': (context) => new SafeArea(
//              top: true,
//              bottom: true,
//              child: new Directionality(
//                  textDirection: TextDirection.rtl, child: HomePage())),
//          '/signup': (context) => new Directionality(
//                textDirection: TextDirection.rtl,
//                child: new SignUp(),
//              ),
//          '/SplashScreen': (context) => new Directionality(
//              textDirection: TextDirection.rtl, child: new SplashScreen())
//        },
//        debugShowCheckedModeBanner: false,
//        home: new Directionality(
//            textDirection: TextDirection.rtl, child: new SplashScreen()));
  }
}
