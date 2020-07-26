
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stubbbb/mahde/home.dart';

import 'ListProfiles.dart';
import 'Listnemone.dart';
import 'R.dart';


class ProfilesPages extends StatefulWidget {
  @override
  _ProfilesPagesState createState() => _ProfilesPagesState();
}

class _ProfilesPagesState extends State<ProfilesPages> {
//  Icon cusIcon =Icon(Icons.search);
//  Widget cusSearchBar =Text('سرچ');

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: ThemeData(primaryIconTheme: IconThemeData(color: Color(0xff2C003E))),
      debugShowCheckedModeBanner: false,
      home: new SafeArea(top: true,bottom: true,child: new Directionality(textDirection: TextDirection.rtl,
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
          appBar: new AppBar(
//            title: this.cusSearchBar,
            actions: <Widget>[
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                new Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: new IconButton(
                        icon: Icon(Icons.filter_list), onPressed: () {})),

              ],)

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
              itemCount: 20,
              itemBuilder: (BuildContext context, int index)
                => index == 0
            ? TextfieldSearch()
                    : ListProfiles(),

            )
        ),
        ),
      )
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
    return new Padding(padding: const EdgeInsets.only(top: 10.0,left: 15.0,right: 15.0,bottom: 10.0),
        child:  new TextField(

          decoration: InputDecoration(
//          border: InputBorder.none,
            contentPadding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 10.0),
            suffixIcon: new Icon(Icons.search,color: Color(0xff2c003e),),
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
          ),));
  }
}

