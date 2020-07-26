import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stubbbb/mahde/home.dart';


import '../ListCards.dart';
import '../R.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          actions: <Widget>[
            new IconButton(
                icon: Icon(Icons.notifications,color: Colors.white,),
                onPressed: () {})
          ],
          elevation: 0.0,
          backgroundColor: R.color.banafshmain),
      drawer: DrawerLists(),
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
    );
  }
}


class NaviBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var sizephone = MediaQuery.of(context).size;
    return new ClipPath(
//      clipper: HeaderClipPath(),
      child: new Container(
        decoration: BoxDecoration(color:Color(0xff2c003e) ,borderRadius: BorderRadius.only(bottomLeft: Radius.circular(35.0))),
        height: sizephone.height * 0.16,/*0.16*/
        child: new Column(
          children: <Widget>[
            new Padding(padding: const EdgeInsets.only(right: 40.0,top: 0.0),
              child: new Row(

                children: <Widget>[
                  new Container(
                      height: 60.0,
                      width: 60.0,
                      decoration: new BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(20.0),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/image/download.jfif')))),
                  new SizedBox(width: 10.0,),
                  new Positioned(
//                  top: 0.0,
                      child: new Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          new Text(
                            'ommeadr',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      )
                    //
                  )],
              ),)
          ],
        ),),
    );


  }
}





class HeaderClipPath extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    var path = new Path();
    path.lineTo(0, 0);
    path.lineTo(size.width,0);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width*0.14, size.height);
    var pointcntrl = Offset(0.0, size.height*1.02);
    var pointend = Offset(0.0, size.height*0.70);
    path.quadraticBezierTo(pointcntrl.dx, pointcntrl.dy, pointend.dx, pointend.dy);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw false;
  }}


