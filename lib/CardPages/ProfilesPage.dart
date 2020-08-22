import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stubbbb/mahde/home.dart';

import 'ListProfiles.dart';
import 'Listnemone.dart';
import 'package:stubbbb/R.dart';

class ProfilesPages extends StatefulWidget {
  @override
  _ProfilesPagesState createState() => _ProfilesPagesState();
}

class _ProfilesPagesState extends State<ProfilesPages> {
  @override
  Widget build(BuildContext context) {
    var phonesize = MediaQuery.of(context).size;
    int currentindexhozouri = 0;
    return new MaterialApp(
        theme: ThemeData(
            primaryIconTheme: IconThemeData(color: R.color.banafshmain)),
        debugShowCheckedModeBanner: false,
        home: new SafeArea(
          top: true,
          bottom: true,
          child: new Directionality(
            textDirection: TextDirection.rtl,
            child: new Scaffold(
                drawer: DrawerLists(),
                appBar: new AppBar(
//            title: this.cusSearchBar,
                  title: TextfieldSearch(),
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
                  itemCount: 20,
                  itemBuilder: (BuildContext context, int index) =>
                      ListProfiles(),
                )),
          ),
        ));
  }
}

class TextfieldSearch extends StatefulWidget {
  @override
  _TextfieldSearchState createState() => _TextfieldSearchState();
}

class _TextfieldSearchState extends State<TextfieldSearch> {
  FocusNode focusNode = FocusNode();
  String hintText = 'جستجو ...';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    focusNode.addListener(() {
      if (focusNode.hasFocus) {
        hintText = '';
      } else {
        hintText = 'جستجو ...';
      }
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Row(
      children: <Widget>[
        new Expanded(
          child: new TextField(
            decoration: InputDecoration(
//          border: InputBorder.none,
              contentPadding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 10.0),
              suffixIcon: new Icon(
                Icons.search,
                color: Color(0xff2c003e),
              ),
//            labelText: "جستجو ...",
              enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                borderSide: const BorderSide(
                  color: Color(0xffF2F3F8),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                borderSide: BorderSide(color: Colors.white),
              ),
              fillColor: Color(0xffF2F3F8),
              hintText: hintText,

              filled: true,
            ),
          ),
        ),
        new GestureDetector(
          child: new Icon(
            Icons.filter_list,
            color: Colors.black,
          ),
          onTap: () {
            showModalBottomSheet(
                context: context,
                builder: (builder) => Container(
                        child: new Column(
                      children: <Widget>[
                        new Container(
                          color: R.color.red,
                          child: new Text(
                            'فیلتر دسته بندی ها',
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                        ),
//                                              new Row(
//                                                children: <Widget>[
//
////                                    CustomRadio<int, double>(
////                                        value: value,
////                                        groupValue: widget.radioValue,
////                                        duration: Duration(milliseconds: 400),
////                                        animsBuilder: (AnimationController controller) => [
////                                          CurvedAnimation(
////                                              parent: controller,
////                                              curve: Curves.ease
////                                          )
////                                        ],
////                                        builder: ({ BuildContext context, List<double> animValues, Function updateState, bool checked }) {
////                                          return GestureDetector(
////                                              onTapDown: (TapDownDetails details) {
////                                                setState(() {
////                                                  if (_controller.status != AnimationStatus.completed)
////                                                    _controller.forward();
////                                                });
////                                              },
////                                              onTapUp: (TapUpDetails details) {
////                                                setState(() {
////                                                  if (_controller.status != AnimationStatus.dismissed)
////                                                    _controller.reverse();
////                                                });
////                                              },
////                                              onTap: () {
////                                                setState(() {
////                                                  widget.radioValue = value;
////                                                });
////                                              },
////                                              child: Container(
////                                                margin: EdgeInsets.all(8.0),
////                                                width: 38.0,
////                                                height: 38.0,
////                                                alignment: Alignment.center,
////                                                decoration: BoxDecoration(
////                                                  shape: BoxShape.circle,
////                                                ),
////                                                child: Stack(
////                                                    alignment: Alignment.center,
////                                                    children: <Widget>[
////                                                      Container(
////                                                        width: 38.0 * _animation.value,
////                                                        height: 38.0 * _animation.value,
////                                                        decoration: BoxDecoration(
////                                                            shape: BoxShape.circle,
////                                                            color: Theme.of(context).primaryColor.withAlpha(40)
////                                                        ),
////                                                      ),
////                                                      Container(
////                                                        width: 18.0,
////                                                        height: 18.0,
////                                                        decoration: BoxDecoration(
////                                                            shape: BoxShape.circle,
////                                                            color: Colors.transparent,
////                                                            border: Border.all(
////                                                                color: checked ? Theme.of(context).primaryColor : Theme.of(context).hintColor,
////                                                                width: 2.0
////                                                            )
////                                                        ),
////                                                      ),
////                                                      Container(
////                                                        width: 11.0 * animValues[0],
////                                                        height: 11.0 * animValues[0],
////                                                        decoration: BoxDecoration(
////                                                          shape: BoxShape.circle,
////                                                          color: Theme.of(context).primaryColor,
////                                                        ),
////                                                      ),
////                                                    ]
////                                                ),
////                                              )
////                                          );
////                                        }
////                                    ),
//                                                ],
//                                              )
                      ],
                    )));
          },
        ),
      ],
    );
  }
}

//class ProfilesPage extends StatefulWidget {
//  @override
//  _ProfilesPageState createState() => _ProfilesPageState();
//}
//
//class _ProfilesPageState extends State<ProfilesPage> {
//  int currentindex2 = 0;
//  List<Widget> pages = [ListProfiles(), Listnemone()];
//
//  void changePage(int i) {
//    setState(() {
//      currentindex2 = i;
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return new MaterialApp(
//        theme: ThemeData(
//            primaryIconTheme: IconThemeData(color: Color(0xff2C003E))),
//        debugShowCheckedModeBanner: false,
//        home: new Directionality(
//            textDirection: TextDirection.rtl,
//            child: new SafeArea(
//                top: true,
//                bottom: true,
//                child: new Scaffold(
//                  drawer: Drawer(
//                    child: new ListView(
////          padding: EdgeInsets.zero,
//                      children: <Widget>[
//                        new Container(
//                          color: Colors.white,
//                          child: new DrawerHeader(
//                              child: new CircleAvatar(
//                            child: Image.asset('assets/image/download (4).png'),
//                          )),
//                        ),
//                        new Column(
//                          children: <Widget>[
//                            new Column(
//                              children: new List.generate(7, (int index) {
//                                return listdrawer[index];
//                              }),
//                            )
//                          ],
//                        )
//                      ],
//                    ),
//                  ),
////                backgroundColor: Color(0xffF2F3F8),
//                  appBar: new AppBar(
//                    actions: <Widget>[
//                      new Padding(
//                          padding: const EdgeInsets.only(left: 5.0),
//                          child: new IconButton(
//                              icon: Icon(Icons.filter_list), onPressed: () {}))
//                    ],
//                    backgroundColor: Colors.white,
//                    elevation: 5.0,
//                    bottomOpacity: 25.0,
//                    shape: RoundedRectangleBorder(
//                      borderRadius: BorderRadius.vertical(
//                        bottom: Radius.circular(30),
//                      ),
//                    ),
//                  ),
//                  body: new ListView.builder(
//                      itemCount: 60,
//                      itemBuilder: (BuildContext context, int index) => index ==
//                              0
//                          ? new Column(
//                              children: <Widget>[
//                                new Stack(
//                                  children: <Widget>[
//                                    new Container(
//                                        decoration: BoxDecoration(
//                                            shape: BoxShape.rectangle,
//                                            color: Color(0xffF2F3F8),
//                                            borderRadius: BorderRadius.only(
//                                                bottomRight:
//                                                    Radius.circular(20.0),
//                                                bottomLeft:
//                                                    Radius.circular(20.0))),
//                                        child: new Align(
//                                          alignment: Alignment.bottomCenter,
//                                          child: new Row(
//                                            mainAxisAlignment:
//                                                MainAxisAlignment.center,
//                                            children: <Widget>[
//                                              new FlatButton(
//                                                onPressed: () {
//                                                  changePage(0);
//                                                },
//                                                child: new Container(
//                                                  decoration: currentindex2 == 0
//                                                      ? new BoxDecoration(
//                                                          border: new Border(
//                                                              bottom:
//                                                                  new BorderSide(
//                                                          color:
//                                                              R.color.primary,
//                                                        )))
//                                                      : new BoxDecoration(),
//                                                  child: new Text("پروفایل ها"),
//                                                ),
//                                              ),
//                                              new Padding(
//                                                padding: const EdgeInsets.only(
//                                                    right: 20.0),
//                                                child: new FlatButton(
//                                                    onPressed: () {
//                                                      changePage(1);
//                                                    },
//                                                    child:
//                                                        new Text('نمونه ها ')),
//                                              ),
//                                            ],
//                                          ),
//                                        )),
//                                  ],
//                                ),
//                              ],
//                            )
//                          : index == 1
//                              ? TextfieldSearch()
//                              : pages[currentindex2]),
//                ))));
//  }
//}

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

// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
