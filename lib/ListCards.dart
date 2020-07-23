import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stubbbb/HomePage/MyProfilePage.dart';

import 'ProfilesPage.dart';



class ListCards extends StatefulWidget {
  @override
  _ListCardsState createState() => _ListCardsState();
}

class _ListCardsState extends State<ListCards> {

  List<String> listhome = [
    'دانشجوی حرفه ای',
    'کارآموزی',
    'پروژه ها',
    'دانشجوها '
  ];

   List<String> images = [
    'assets/image/In progress-amico (1).png',
     'assets/image/download (4).png',
     'assets/image/Startup life-rafiki (2).png',
     'assets/image/undraw_folder_files_nweq.png',]
  ;

  @override
  Widget build(BuildContext context) {
    var phonesize = MediaQuery.of(context).size;
    return Center(
      child: new Column(

        children: <Widget>[
          new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new GestureDetector(
               onTap : () {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilesPage()),
                );
              },
                child: new Card(

                  shadowColor: Colors.black,
                  elevation: 10.0,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                  margin: const EdgeInsets.only(left: 15.0,right: 5.0,top: 25.0),
                    color: Colors.white,
                    child: new Container(
                        height: phonesize.height * 0.27,
                        width: phonesize.width * 0.38,
                        child: new Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: <Widget>[
                            new Padding(
                              padding: const EdgeInsets.only(right: 8.0,top: 10.0),
                              child: new Text(listhome[3],style: TextStyle(color: Color(0xfffe346e),fontSize: 20.0,fontWeight: FontWeight.bold),),
                            ),
                            new SizedBox(height: 40.0,),
                            new Padding(padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 8.0),
                                child: new Image(image: AssetImage(images[1]),height: 85.0,))
                          ],
                        ),
                  ),
                ),
              ),
              new GestureDetector(
                child: new Card(

                  shadowColor: Colors.black,
                  elevation: 10.0,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                  margin: const EdgeInsets.only(left: 15.0,right: 5.0,top: 25.0),
                  color: Colors.white,
                  child: new Container(
                    height: phonesize.height * 0.27,
                    width: phonesize.width * 0.38,
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: <Widget>[
                        new Padding(padding: const EdgeInsets.only(right: 8.0,top: 10.0),child: new Text(listhome[2],style: TextStyle(color: Color(0xfffe346e),fontSize: 20.0,fontWeight: FontWeight.bold),),),
                        new SizedBox(height: 40.0,),
                        new Padding(padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 8.0),
                            child: new Image(image: AssetImage(images[3]),height: 85.0,))
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new GestureDetector(
                onTap: (){
                  print("pressed");
                },
                child: new Card(

                  shadowColor: Colors.black,
                  elevation: 10.0,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                  margin: const EdgeInsets.only(left: 15.0,right: 5.0,top: 25.0),
                  color: Colors.white,
                  child: new Container(
                    height: phonesize.height * 0.27,
                    width: phonesize.width * 0.38,
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: <Widget>[
                        new Padding(padding: const EdgeInsets.only(right: 8.0,top: 10.0),child: new Text(listhome[1],style: TextStyle(color: Color(0xfffe346e),fontSize: 20.0,fontWeight: FontWeight.bold),),),
                        new SizedBox(height: 40.0,),
                        new Padding(padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 8.0),
                            child: new Image(image: AssetImage(images[0]),height: 85.0,))
                      ],
                    ),
                  ),
                ),
              ),
              new GestureDetector(
                child: new Card(

                  shadowColor: Colors.black,
                  elevation: 10.0,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                  margin: const EdgeInsets.only(left: 15.0,right: 5.0,top: 25.0),
                  color: Colors.white,
                  child: new Container(
                    height: phonesize.height * 0.27,
                    width: phonesize.width * 0.38,
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: <Widget>[
                        new Padding(padding: const EdgeInsets.only(right: 15.0,top: 10.0),child: new Text(listhome[0],style: TextStyle(color: Color(0xfffe346e),fontSize: 18.0,fontWeight: FontWeight.bold),),),
                        new SizedBox(height: 40.0,),
                        new Padding(padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 8.0),
                            child: new Image(image: AssetImage(images[2]),height: 85.0,))
                      ],
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}



