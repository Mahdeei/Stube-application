import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProPage extends StatefulWidget {
  @override
  _ProPageState createState() => _ProPageState();
}

class _ProPageState extends State<ProPage> {
  @override
  Widget build(BuildContext context) {
    var phonesize =MediaQuery.of(context).size;

    return new Material(
      color: Color(0xfff2f3f8),
        child: new Directionality(
            textDirection: TextDirection.rtl, child: new SafeArea(
            child: ListView(
              children: <Widget>[
                new Stack(
                  children: <Widget>[
                    new Container(
                      height: phonesize.height *0.28,
                      width: phonesize.width,
                      color: Color(0xff44143E),

                    ),
                    new IconButton(icon: Icon(Icons.share,color: Colors.white,), onPressed: (){print('pressed share');}),
                    new Column(
//                    mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Directionality(
                          textDirection: TextDirection.ltr,
                          child: new Column(
                            children: <Widget>[
                              new Padding(
                                padding: const EdgeInsets.only(left: 200.0,top: 60.0),
                                child: new Row(children: <Widget>[
                                  new Icon(Icons.school,color: Colors.white,),
                                  new SizedBox(width: 3.0,),
                                  new Text('omeadr',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 14.0,fontWeight: FontWeight.bold),),


                                ],),),
                              new Padding(
                                padding: const EdgeInsets.only(left: 200.0,top: 20.0),
                                child: new Row(children: <Widget>[
                                  new Icon(Icons.location_on,color: Colors.white,),
                                  new SizedBox(width: 3.0,),
                                  new Text('khorasan razavi,mashhad',style: TextStyle(color: Colors.white,fontSize: 12.0,fontWeight: FontWeight.bold),),


                                ],),),
                            ],),),
                        new SizedBox(height: 15.0,),
                        new Row(children: <Widget>[
                          new IconButton(icon: Icon(Icons.bookmark,color: Colors.white,), onPressed: (){print('pressed save');}),
                          new GestureDetector(
                            onTap: (){print('pressed ');},
                            child: new Container(
                                alignment: Alignment.center,
//                            height: 20.0,
                                width: 60.0,
                                decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(15.0)),
                                child: new Padding(

                                  padding: const EdgeInsets.only(top: 0.5,bottom: 0.5),
                                  child: new Text('پیام',style: TextStyle(color: Color(0xff2C003E),fontSize: 12.0),),)
                            ),),
                          new SizedBox(width: 3.0,),
                          new GestureDetector(
                            onTap: (){print('pressed ');},
                            child: new Container(
                                alignment: Alignment.center,
//                            height: 20.0,
                                width: 60.0,
                                decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(15.0)),
                                child: new Padding(

                                  padding: const EdgeInsets.only(top: 0.5,bottom: 0.5),
                                  child: new Text('درخواست',style: TextStyle(color: Color(0xff2C003E),fontSize: 12.0),),)
                            ),),
                        ],)
                      ],),
                    new Align(
                      alignment: Alignment.centerLeft,
                      child: new ClipPath(
                        clipper:ClipPathLine(),
                        child: Container(
                            height: phonesize.height *0.28,
                            width: phonesize.width * 0.5,
                            color: Color(0xff2D0827),
                            child: new Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                new CircleAvatar(
                                  child: new Image.asset('assets/image/download (4).png'),
                                  backgroundColor: Colors.white,
                                  maxRadius: 40.0,
                                ),
                                new SizedBox(height: 5.0,),
                                new Text('امید روینده',style: TextStyle(color: Colors.white,fontSize: 15.0,fontWeight: FontWeight.bold),maxLines: 1,overflow: TextOverflow.ellipsis,),
                                new Text('مهندسی برق',style: TextStyle(color: Color(0xff44143E),fontWeight: FontWeight.bold,),maxLines: 1,overflow: TextOverflow.ellipsis,),

                              ],
                            )

                        ),
                      ),
                    )
                  ],
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Row(
                      children: <Widget>[
                        new Icon(Icons.timeline),
                        new Text('اخرین فهالیت : امروز',style: TextStyle(fontSize: 10.0)),
                      ]),
                    new Row(
                      children: <Widget>[
                        new Icon(Icons.restore),
                        new Text('در حال استراحت',style: TextStyle(fontSize: 10.0),)
                      ],
                    )
                    ]),
                new Padding(padding: const EdgeInsets.only(right: 7.0,top: 18.0),child: new Text('یکسال به طور حرفه ای برنامه نویسی اپ کار کردم و فرانت و بک را خودم انجام میدم . لطفا برای صحبت برای هزینه بهم پیام بدید و اینکه کار رو با ضمانت تحویل میدم و از لحاظ کیفیت خیالتان راحت ',
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),),

                  ],


            ))

        ));

  }
}


class ClipPathLine extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = new Path();
    path.lineTo(0, 0);
    path.lineTo(size.width , 0);
    path.lineTo(size.width  - 10.0, size.height * 0.26);
    path.lineTo(size.width , size.height * 0.42);
    path.lineTo(size.width - 10.0, size.height * 0.59);
    path.lineTo(size.width , size.height * 0.75);
    path.lineTo(size.width - 10.0, size.height);
    path.lineTo(0.0, size.height);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw false;
  }
}



















