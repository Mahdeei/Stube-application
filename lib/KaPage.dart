import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'AgahPage.dart';

class KaPage extends StatefulWidget {
  @override
  _KaPageState createState() => _KaPageState();
}

class _KaPageState extends State<KaPage> {
  @override
  Widget build(BuildContext context) {
    var phonesize = MediaQuery.of(context).size;
    return new MaterialApp(
        debugShowCheckedModeBanner: false,
        home: new Directionality(
            textDirection: TextDirection.rtl, child: new SafeArea(top: true,child: new Scaffold(
            body: ListView(
              children: <Widget>[
                HeadersItems(),
                new Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        new Icon(Icons.timer,color: Colors.black54,size: 20.0,),
                        new SizedBox(width: 3.0,),
                        new Padding(padding: const EdgeInsets.only(top: 3.0),
                          child: new Text('4 ساعت در روز',style: TextStyle(color: Colors.black54,fontSize: 15.0),)
                          ,)
                      ],
                    ),
                    new Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        new Icon(Icons.people,color: Colors.black54,size: 20.0,),
                        new SizedBox(width: 3.0,),
                        new Padding(padding: const EdgeInsets.only(top: 3.0, left: 3.0),
                          child: new Text('6 نفر',style: TextStyle(color: Colors.black54,fontSize: 15.0),)
                          ,)
                      ],
                    )
                  ],
                ),
                new Padding(padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
                  child: new Text('کارآموزی منجر به استخدام ',
                    style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.bold),),),
                Line(),
                new Padding(padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
                  child: new Text('تعدادی دانشجوی کامپیوتر جهت کارآموزی برنامه نویسی اپلیکیشن در شرکت می پذیریم',
                    style: TextStyle(fontSize: 17.0),),),
                Line(),
                new Padding(padding: const EdgeInsets.only(right: 15.0,left: 15.0,top: 10.0),
                  child: new Text('شرایط',
                    style: TextStyle(fontSize: 22.0,fontWeight: FontWeight.bold),),),
                new Padding(padding: const EdgeInsets.symmetric(horizontal: 25.0,vertical: 5.0),
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Text('حداقل ترم 3 کامپیوتر',
                        style: TextStyle(fontSize: 17.0),),
                      new Text('آشنایی مقدماتی با برنامه نویسی',
                        style: TextStyle(fontSize: 17.0),),
                      new Text('کار با فوتوشاپ و افترافکت',
                        style: TextStyle(fontSize: 17.0),),
                  ],)
                ),
                Line(),
                new Padding(padding: const EdgeInsets.only(right: 15.0,left: 15.0,top: 10.0),
                  child: new Text('آدرس',
                    style: TextStyle(fontSize: 22.0,fontWeight: FontWeight.bold),),),
                new Padding(padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
                  child: new Text('مشهد، وکیل آباد 56، خیابان طاهر، مجتمع صدف', style: TextStyle(fontSize: 17.0),),),
                Line(),
                new Padding(padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 20.0),
                    child: new Wrap(
                      runSpacing: 8.0,
                      spacing: 7.0,
                      children: <Widget>[
                        ObjectTag(tags: 'ios  برنامه نویسی',),
                        ObjectTag(tags: 'فرانت اند',),
                        ObjectTag(tags: 'بک اند',),
                        ObjectTag(tags: 'ui',),
                      ],
                    ),),
                Line(),
                new Padding(padding: const EdgeInsets.only(right: 15.0,left: 15.0,top: 10.0),
                  child: new Text('ارتباط',
                    style: TextStyle(fontSize: 22.0,fontWeight: FontWeight.bold),),),
                new Padding(padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
                  child: new Column(
                    children: <Widget>[
                      new Row(
                        children: <Widget>[
                          new Icon(Icons.call),
                          new Text(' 0939734053', style: TextStyle(fontSize: 17.0),)
                        ],
                      ),
                      new SizedBox(height: 5,),
                      new Row(
                        children: <Widget>[
                          new Icon(Icons.mail),
                          new Text(' iranserver@gmail.com', style: TextStyle(fontSize: 17.0),)
                        ],
                      ),
                      new SizedBox(height: 5,),
                      new Row(
                        children: <Widget>[
                          new Icon(Icons.check_circle),
                          new Text(' iran_server', style: TextStyle(fontSize: 17.0),)
                        ],
                      ),
                    ],
                  )
                ),



              ],
            )
        ))));
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
            new Container(height: phonesize.height*0.25,
              width: phonesize.width * 0.45,
              decoration: BoxDecoration(
                  image: DecorationImage(colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
                      fit: BoxFit.cover,
                      image: AssetImage('assets/image/dev.jpg',)
                  )
              ),
              child:new Align(alignment: Alignment.topRight,
                child:   new IconButton(icon: Icon(Icons.share,color: Colors.white,), onPressed: (){print('pressed');}),),
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
    )
    ;
  }
}
