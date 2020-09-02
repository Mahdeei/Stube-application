import 'package:flutter/material.dart';
import 'package:stubbbb/CardPages/AgahPage.dart';
import 'package:stubbbb/Other/widget.dart';
import 'package:stubbbb/mahde/home.dart';

class MyRequestPage extends StatefulWidget {
  @override
  _MyRequestPageState createState() => _MyRequestPageState();
}

class _MyRequestPageState extends State<MyRequestPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    var phonesize = MediaQuery.of(context).size;
    return new Directionality(
        textDirection: TextDirection.rtl,
        child: new Scaffold(
          key: _scaffoldKey,
          drawerEnableOpenDragGesture: true,
          drawer: DrawerLists(),

          appBar: appBarMessagePage(_scaffoldKey),
          body: new ListView.builder(
              itemCount: 20,
              itemBuilder: (BuildContext context, int index) => new Column(
                    children: <Widget>[
//                new SizedBox(height: 5.0,),
                      new GestureDetector(
                        child: new Container(
                          margin: const EdgeInsets.only(top: 5.0),
                          width: phonesize.width,
                          child: new Column(
                            children: <Widget>[
                              new Row(
                                children: <Widget>[
                                  new Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    height: phonesize.height * 0.10,
                                    width: phonesize.width * 0.18,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: new AssetImage(
                                              'assets/image/download.jfif'),
                                          fit: BoxFit.cover),
//                                boxShadow: [BoxShadow(color: Colors.black,offset: Offset(1.5, 3.0),blurRadius: 5.0),],
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(27)),
                                    ),
                                  ),
                                  new Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      new Text('Omeadr'),
                                      new Row(
                                        children: <Widget>[
                                          new SizedBox(
                                            width: 250.0,
                                            child: new Text(
                                              'سلام،حدود 5سال سابقه برنامه نویسی اپلیکیشن دارمو می تونم در این زمینه با شما همکاری کنم و به خو',
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                          ButtonMore(),
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              new Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  new Padding(
                                    padding: const EdgeInsets.only(right: 80.0),
                                    child: new Text(
                                      '8.14 ب.ظ',
                                      style: TextStyle(fontSize: 8.0),
                                    ),
                                  ),
                                  new Padding(
                                    padding: const EdgeInsets.only(left: 27.0),
                                    child: new Row(
                                      children: <Widget>[
                                        new Text(
                                          'khorasan,mashhad',
                                          style: TextStyle(fontSize: 8.0),
                                        ),
                                        new Icon(
                                          Icons.location_on,
                                          size: 10.0,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Line()
                    ],
                  )),
        ));
  }
}

class Constants {
  static String first = 'ایجاد درخواست';
  static String second = 'پیام';
  static String third = 'ذخیره';

  static List<String> textmorebutton = ['ایجاد درخواست', 'پیام', 'ذخیره'];
}

class ButtonMore extends StatefulWidget {
  @override
  _ButtonMoreState createState() => _ButtonMoreState();
}

class _ButtonMoreState extends State<ButtonMore> {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
        onSelected: choiceAction,
        itemBuilder: (BuildContext context) {
          return Constants.textmorebutton
              .map((String text) =>
                  PopupMenuItem<String>(value: text, child: Text(text)))
              .toList();
        });
  }
}

void choiceAction(String choice) {
  if (choice == 'ایجاد درخواست') {
    print('Press 1');
  } else if (choice == 'پیام') {
    print('Press 2');
  } else if (choice == 'ذخیره') {
    print('Press 3');
  }
}
