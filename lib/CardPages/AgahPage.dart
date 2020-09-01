import 'package:flutter/material.dart';


class AgahPage extends StatefulWidget {
  @override
  _AgahPageState createState() => _AgahPageState();
}

class _AgahPageState extends State<AgahPage> {
  @override
  Widget build(BuildContext context) {
    // var phonesize = MediaQuery.of(context).size;
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
                          child: new Text('تا 99/06/30',style: TextStyle(color: Colors.black54,fontSize: 15.0),)
                          ,)
                      ],
                    ),
                    new Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        new Icon(Icons.attach_money,color: Colors.black54,size: 20.0,),
                        new SizedBox(width: 3.0,),
                        new Padding(padding: const EdgeInsets.only(top: 3.0, left: 3.0),
                          child: new Text('تا 2,000,000 تومان',style: TextStyle(color: Colors.black54,fontSize: 15.0),)
                          ,)
                      ],
                    )
                  ],
                ),
                new Padding(padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
                  child: new Text('یک طراح سایت یا برنامه نویس فرانت اند برای طراحی و کد نویسی سایت با حداقل سابقه کاری دو سال بهم درخواست بده. ',
                    style: TextStyle(fontSize: 17.0),),),
                Line(),
                new Padding(padding: const EdgeInsets.only(right: 15.0,left: 15.0,top: 10.0),
                  child: new Text('شرایط',
                    style: TextStyle(fontSize: 22.0,fontWeight: FontWeight.bold),),),
                new Padding(padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
                  child: new Text('حداقل دو سال سابقه کار، آشنایی با Git، توانایی انجام کار با تیم، آشنایی با MVC ',
                    style: TextStyle(fontSize: 17.0),),),
                Line(),
                new Padding(padding: const EdgeInsets.only(right: 15.0,left: 15.0,top: 10.0),
                  child: new Text('امتیاز',
                    style: TextStyle(fontSize: 22.0,fontWeight: FontWeight.bold),),),
                new Padding(padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
                  child: new Text('کار با فوتوشاپ، ساخت انیمیشن با افتر افکت، کار با XD، طراحی لوگو', style: TextStyle(fontSize: 17.0),),),
                Line(),
                new Padding(padding: const EdgeInsets.only(right: 15.0,left: 15.0,top: 10.0),
                  child: new Text('آدرس',
                    style: TextStyle(fontSize: 22.0,fontWeight: FontWeight.bold),),),
                new Padding(padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
                  child: new Text('بلوار پیروزی، میدان سلمان', style: TextStyle(fontSize: 17.0),),),
                Line(),
                new Padding(padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 20.0),
                    child: new Wrap(
                      runSpacing: 8.0,
                      spacing: 7.0,
                      children: <Widget>[
                        ObjectTag(tags: 'برنامه نویسی',),
                        ObjectTag(tags: 'فرانت اند',),
                        ObjectTag(tags: 'بک اند',),
                        ObjectTag(tags: 'گرافیک',),
                        ObjectTag(tags: 'ui',),
                      ],
                    ))



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


class Line extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Padding(padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 5.0),
      child: new Container(
        height: 1.0,
        color: Colors.grey[300],
      ),)
    ;
  }
}



//class ObjectTag extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return new Container(
//      decoration: BoxDecoration(color: Color(0xff2D0827),
//          borderRadius: BorderRadius.all(Radius.circular(30.0))),
//      child: new Padding(padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 3.0),
//        child: new Text('dfbihjdkiub',style: TextStyle(color: Colors.white),),),
//    );
//  }
//}


class ObjectTag extends StatelessWidget {
  final String tags;

  const ObjectTag({this.tags});
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 20.0,

        decoration: BoxDecoration(
            color: Color(0xff2D0827),
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(15.0)),
        child:new Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6.0,vertical: 3.0),
          child: new Text(tags,style: new TextStyle(color: Colors.white,fontSize: 10.0,),),
        ));
  }
}


