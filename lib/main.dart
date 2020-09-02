import 'package:flutter/material.dart';
<<<<<<< HEAD
<<<<<<< HEAD
import 'package:stubbbb/WelcomePage.dart';
=======
import 'package:stubbbb/SignUp.dart';
import 'package:stubbbb/SplashScreen.dart';
>>>>>>> d9c385ef02d4abe638811818253d47b9197c7a6f
=======
>>>>>>> 7bf1e621d4b0b0587d8f0800c47719d5d74c1f59
import 'package:stubbbb/mahde/home.dart';

import 'LoginPage/SignUp.dart';
import 'LoginPage/SplashScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
<<<<<<< HEAD
      debugShowCheckedModeBanner: false,
      home: new SafeArea(
          top: true,
          bottom: true,
          child: new Directionality(textDirection: TextDirection.rtl, child: new WelcomePage())),
    );

=======
        initialRoute: '/SplashScreen',
        routes: {
          '/HomePage': (context) => new SafeArea(
              top: true,
              bottom: true,
              child: new Directionality(
                  textDirection: TextDirection.rtl, child: HomePage())),
          '/signup': (context) => new Directionality(
                textDirection: TextDirection.rtl,
                child: new SignUp(),
              ),
          '/SplashScreen': (context) => new Directionality(
              textDirection: TextDirection.rtl, child: new SplashScreen())
        },
        debugShowCheckedModeBanner: false,
        home: new Directionality(
            textDirection: TextDirection.rtl, child: new SplashScreen()));
>>>>>>> d9c385ef02d4abe638811818253d47b9197c7a6f
  }
}
