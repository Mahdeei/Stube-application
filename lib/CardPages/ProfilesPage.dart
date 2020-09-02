import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:stubbbb/Other/R.dart';
import 'package:stubbbb/Other/widget.dart';
import 'package:stubbbb/http/profiles.dart';
import 'package:stubbbb/mahde/home.dart';
import 'file:///D:/proflutter/stubbbb/lib/Other/profileModels.dart';
import 'ListProfiles.dart';
import 'package:http/http.dart' as http;

class ProfilesPages extends StatefulWidget {
  @override
  _ProfilesPagesState createState() => _ProfilesPagesState();
}

class _ProfilesPagesState extends State<ProfilesPages> {
  ScrollController scrollController = ScrollController();
  List<Models> _profiles = [];
  bool isLoading = false;

  int i = 10;
  List<Models> models;
  Map body;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // scrollController.addListener(() {
    //   double maxscrol = scrollController.position.maxScrollExtent;
    //   double currscrol = scrollController.position.pixels;
    // if (maxscrol - currscrol >= 200) {
    //   // addModel();
    // }
    _getProfiles();
    
  }

  _getProfiles() async {
    var response = await ProfileHttp.getData();
    // print(response);
    setState(() {
      _profiles.addAll(response['profiles']);
    });
    // print('_profiles');
     setState(() {
        isLoading = true;
      });
    print(_profiles);
  }
  // addModel() async {
  //   await Future.delayed(Duration(milliseconds: 5000));
  //   setState(() {
  //     refreshList();
  //   });
  // }

  // Future<Null> refreshList() async {
  //   await Future.delayed(Duration(milliseconds: 50));
  //   setState(() {
  //     models.add(new Models(username: 'sd $i', educational: 'ssssssssss$i'));
  //   });
  //   return null;
  // }

  @override
  Widget build(BuildContext context) {
    // var phonesize = MediaQuery.of(context).size;
    // int currentindexhozouri = 0;
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
                body: isLoading
                    ? new ListView.builder(
                        itemCount: _profiles.length,
                        itemBuilder: (BuildContext context, int index) =>
                            ListProfiles(model: _profiles[index]),
                      )
                    : new Center(
                        child: new CircularProgressIndicator(),
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
