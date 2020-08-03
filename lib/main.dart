import 'package:flutter/material.dart';
import 'package:stubbbb/WelcomePage.dart';
import 'package:stubbbb/mahde/home.dart';

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

  }
}
