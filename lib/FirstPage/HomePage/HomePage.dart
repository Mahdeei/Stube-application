import 'package:flutter/material.dart';
import 'package:stubbbb/Other/R.dart';
import 'package:stubbbb/Other/widget.dart';
import 'ListCards.dart';

class MyHomePage extends StatelessWidget {
  final Map body;

  MyHomePage({this.body});


  @override
  Widget build(BuildContext context) {
    return new Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: appBarHomePage(),
          drawer: DrawerLists(),
          drawerEnableOpenDragGesture: true,
          backgroundColor: R.color.backGround1,
          body: new Column(
            children: <Widget>[
              Headers(),
              ListCards(),
            ],
          ),
        ));
  }
}
