import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stubbbb/mahde/home.dart';
import 'package:http/http.dart' as http;
import '../ListCards.dart';
import '../R.dart';

class MyHomePage extends StatelessWidget {
  final Map body;

  MyHomePage({this.body});
  @override
  Widget build(BuildContext context) {
    return new Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: new AppBar(actions: <Widget>[
            new IconButton(
                icon: Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 28,
                ),
                onPressed: () {})
          ], elevation: 0.0, backgroundColor: R.color.banafshmain),
          drawer: DrawerLists(),
          drawerEnableOpenDragGesture: true,
          backgroundColor: R.color.backGround1,
          body: new Column(
            children: <Widget>[
              NaviBar(),
              ListCards(),
//          TestingScreen(),
//          TestingScreen(),
//          TestingScreen(),
            ],
          ),
        ));
  }
}

class NaviBar extends StatelessWidget {
  var username;
  @override
  Widget build(BuildContext context) {
    var sizephone = MediaQuery.of(context).size;
    return new ClipPath(
//      clipper: HeaderClipPath(),
      child: new Container(
        decoration: BoxDecoration(
            color: Color(0xff2c003e),
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(35.0))),
        height: sizephone.height * 0.16,
        /*0.16*/
        child: new Column(
          children: <Widget>[
            new Padding(
              padding: const EdgeInsets.only(right: 20.0, top: 0.0),
              child: new Row(
                children: <Widget>[
                  new Container(
                      margin: const EdgeInsets.only(left: 5.0, top: 10.0),
                      height: 70.0,
                      width: 70.0,
                      decoration: new BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(50.0),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image:
                                  AssetImage('assets/image/download.jfif')))),
                  new SizedBox(
                    width: 10.0,
                  ),
                  new Positioned(
//                  top: 0.0,
                      child: new Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Text(
                        'username',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                      //
                      )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Future userr() async {
    var response = await http.post(
      'http://192.168.56.1/Stub/selectUsername.php',
      body: {'id': '16'},
    );
    print(response);
    username = jsonDecode(response.body);
  }
}

class HeaderClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    var path = new Path();
    path.lineTo(0, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width * 0.14, size.height);
    var pointcntrl = Offset(0.0, size.height * 1.02);
    var pointend = Offset(0.0, size.height * 0.70);
    path.quadraticBezierTo(
        pointcntrl.dx, pointcntrl.dy, pointend.dx, pointend.dy);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw false;
  }
}
