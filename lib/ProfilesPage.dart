// import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stubbbb/mahde/home.dart';

import 'ListProfiles.dart';
import 'Listnemone.dart';
import 'R.dart';

class ProfilesPage extends StatefulWidget {
  @override
  _ProfilesPageState createState() => _ProfilesPageState();
}

class _ProfilesPageState extends State<ProfilesPage> {
  int currentindex2 = 0;
  List<Widget> pages = [ListProfiles(), Listnemone()];

  void changePage(int i) {
    setState(() {
      currentindex2 = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        theme: ThemeData(
            primaryIconTheme: IconThemeData(color: Color(0xff2C003E))),
        debugShowCheckedModeBanner: false,
        home: new Directionality(
            textDirection: TextDirection.rtl,
            child: new SafeArea(
                top: true,
                bottom: true,
                child: new Scaffold(
                  drawer: Drawer(
                    child: new ListView(
//          padding: EdgeInsets.zero,
                      children: <Widget>[
                        new Container(
                          color: Colors.white,
                          child: new DrawerHeader(
                              child: new CircleAvatar(
                            child: Image.asset('assets/image/download (4).png'),
                          )),
                        ),
                        new Column(
                          children: <Widget>[
                            new Column(
                              children: new List.generate(7, (int index) {
                                return listdrawer[index];
                              }),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
//                backgroundColor: Color(0xffF2F3F8),
                  appBar: new AppBar(
                    actions: <Widget>[
                      new Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: new IconButton(
                              icon: Icon(Icons.filter_list), onPressed: () {}))
                    ],
                    backgroundColor: Colors.white,
                    elevation: 5.0,
                    bottomOpacity: 25.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                        bottom: Radius.circular(30),
                      ),
                    ),
                  ),
                  body: new ListView.builder(
                      itemCount: 60,
                      itemBuilder: (BuildContext context, int index) => index ==
                              0
                          ? new Column(
                              children: <Widget>[
                                new Stack(
                                  children: <Widget>[
                                    new Container(
                                        decoration: BoxDecoration(
                                            shape: BoxShape.rectangle,
                                            color: Color(0xffF2F3F8),
                                            borderRadius: BorderRadius.only(
                                                bottomRight:
                                                    Radius.circular(20.0),
                                                bottomLeft:
                                                    Radius.circular(20.0))),
                                        child: new Align(
                                          alignment: Alignment.bottomCenter,
                                          child: new Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: <Widget>[
                                              new FlatButton(
                                                onPressed: () {
                                                  changePage(0);
                                                },
                                                child: new Container(
                                                  decoration: currentindex2 == 0
                                                      ? new BoxDecoration(
                                                          border: new Border(
                                                              bottom:
                                                                  new BorderSide(
                                                          color:
                                                              R.color.primary,
                                                        )))
                                                      : new BoxDecoration(),
                                                  child: new Text("پروفایل ها"),
                                                ),
                                              ),
                                              new Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 20.0),
                                                child: new FlatButton(
                                                    onPressed: () {
                                                      changePage(1);
                                                    },
                                                    child:
                                                        new Text('نمونه ها ')),
                                              ),
                                            ],
                                          ),
                                        )),
                                  ],
                                ),
                              ],
                            )
                          : index == 1
                              ? TextfieldSearch()
                              : pages[currentindex2]),
                ))));
  }
}

//class DialogFilter extends StatefulWidget {
//  @override
//  _DialogFilterState createState() => _DialogFilterState();
//}
//
//class _DialogFilterState extends State<DialogFilter> {
//  @override
//  Widget build(BuildContext context) {
//    return new Dialog(
//
//      shape: RoundedRectangleBorder(
//          borderRadius: BorderRadius.circular(10.0)),
//      backgroundColor: Colors.white,
//      child: new Column(children: <Widget>[
//        new Row(),
//      ],));
//    ;
//  }
//}
