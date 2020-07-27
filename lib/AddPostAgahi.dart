import 'package:flutter/material.dart';

import 'dart:io';

import 'package:image_picker/image_picker.dart';

class AddPostAgahi extends StatefulWidget {
  @override
  _AddPostAgahiState createState() => _AddPostAgahiState();
}

class _AddPostAgahiState extends State<AddPostAgahi> {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: new Directionality(
            textDirection: TextDirection.rtl,
            child: new ListView(
              children: <Widget>[
                HeadersItems(),
              ],
            )
        )
    );
  }
}











class HeadersItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var phonesize = MediaQuery.of(context).size;
    return new Column(
      children: <Widget>[
        new Row(
          children: <Widget>[
            new Container(
              height: phonesize.height*0.25,
              width: phonesize.width * 0.45,
              child:new Align(
                alignment: Alignment.center,
                child:  new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Icon(Icons.add_a_photo,size: 70.0,),
                    new Text('اضافه کردن عکس',style: TextStyle(fontSize: 22.0),)
                  ],
                ),
              )
            ),
            new Container(height: phonesize.height*0.25,
              width:phonesize.width*0.55,
              color: Color(0xff2D0827),
              child: new Column(
                children: <Widget>[
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      new Padding(padding: const EdgeInsets.only(top: 2.0,right: 5.0),
                        child: new CircleAvatar(backgroundImage: AssetImage('assets/image/avt.jpg'),maxRadius: 16.0,)
                        ,),
                      new IconButton(icon: Icon(Icons.arrow_forward,color: Colors.white,), onPressed: (){})

                    ],
                  ),
                  new Align(alignment: Alignment.topRight,
                    child: new Padding(padding: const EdgeInsets.only(right: 5.0),
                      child: new Text('طراحی سایت',overflow: TextOverflow.ellipsis,maxLines: 1,
                        style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold,color: Colors.white),),),),
                  new Align(alignment: Alignment.topRight,
                      child: new Padding(padding: const EdgeInsets.only(right: 8.0),
                        child: new Text('تکنولوژی و فناوری اطلاعات',overflow: TextOverflow.ellipsis,maxLines: 1,
                          style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold,color: Color(0xff44143E),),),)),
                  new SizedBox(height: phonesize.height*0.04,),
                  new Align(alignment: Alignment.bottomCenter,
                    child: new Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        new GestureDetector(
                          child: Icon(Icons.playlist_add_check,color: Colors.white,size: 28.0,),
                        ),
                        new GestureDetector(
                          child: new Container(decoration: BoxDecoration(color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(20.0))),
                            width: phonesize.width*0.17,
                            child: new Text('پیام',
                              style:TextStyle(
                                  color: Color(0xff2D0827),fontWeight: FontWeight.bold,fontSize: 14.0),
                              textAlign: TextAlign.center,),
                          ),
                        ),
                        new GestureDetector(
                          child: new Container(decoration: BoxDecoration(color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(20.0))),
                            width: phonesize.width*0.17,
                            child: new Text('شروع کار',
                              style:TextStyle(
                                  color: Color(0xff2D0827),fontWeight: FontWeight.bold,fontSize: 14.0),
                              textAlign: TextAlign.center,),
                          ),
                        ),
                        new GestureDetector(
                          child: Icon(Icons.bookmark_border,color: Colors.white,),
                        )
                      ],
                    ),)
                ],),)
          ],
        )
      ],
    );
  }
}





