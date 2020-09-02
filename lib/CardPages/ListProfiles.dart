import 'package:flutter/material.dart';
import 'file:///D:/proflutter/stubbbb/lib/Other/profileModels.dart';
import 'ProPage.dart';

class ListProfiles extends StatefulWidget {
  final Models model;
  ListProfiles({this.model});
  final controller = new PageController();
  @override
  _ListProfilesState createState() => _ListProfilesState();
}

class _ListProfilesState extends State<ListProfiles> {
  @override
  Widget build(BuildContext context) {
    var phonesize = MediaQuery.of(context).size;
    return new Column(
      children: <Widget>[
        new GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProPage()),
            );
          },
          child: new Row(
            children: <Widget>[
              new Padding(
                padding: const EdgeInsets.only(top: 20.0, right: 15.0),
                child: new Container(
                  height: phonesize.height * 0.1,
                  width: phonesize.width * 0.7,
                  child: new Column(
                    children: <Widget>[
                      new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          new Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: new Text(widget.model.name,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 18.0)),
                          ),
                          new Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: new Text(
                              widget.model.username,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18.0),
                            ),
                          )
                        ],
                      ),
                      new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
//                  crossAxisAlignment: CrossAxisAlignment.start,
//                  mainAxisAlignment: MainAxisAlignment.spaceAround,

//                      alignment: Alignment.topRight,
                            new Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                new Container(
                                    decoration: BoxDecoration(
                                        color: Color(0xffD2FAFB),
                                        shape: BoxShape.rectangle,
                                        borderRadius:
                                            BorderRadius.circular(15.0)),
                                    child: new Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 3.0, vertical: 1.0),
                                      child: new Text(
                                        'ml,,,,,',
                                        style: new TextStyle(
                                          color: Color(0xff2c003e),
                                          fontSize: 10.0,
                                        ),
                                      ),
                                    )),
                                new Container(
                                    decoration: BoxDecoration(
                                        color: Color(0xffD2FAFB),
                                        shape: BoxShape.rectangle,
                                        borderRadius:
                                            BorderRadius.circular(15.0)),
                                    child: new Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 3.0, vertical: 1.0),
                                      child: new Text(
                                        'برنامه نویسی موبایل',
                                        style: new TextStyle(
                                          color: Color(0xff2c003e),
                                          fontSize: 10.0,
                                        ),
                                      ),
                                    ))
                              ],
                            ),

                            new Align(
                              alignment: Alignment.centerLeft,
                              child: new Padding(
                                padding: EdgeInsets.only(left: 10.0),
                                child: new Text(
                                  '4.2',
                                  style: TextStyle(
                                      fontSize: 20.0, color: Colors.amber),
                                ),
                              ),
                            )
                          ]),
                      new Expanded(child: new Container()),
                      new Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          new Text(
                            'khorasan,mashhad',
                            style: TextStyle(fontSize: 10.0),
                          ),
                          new Icon(
                            Icons.location_on,
                            size: 10.0,
                            color: Colors.red,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              new Padding(
                padding: const EdgeInsets.only(top: 10.0, right: 0.0),
                child: new Container(
                  height: phonesize.height * 0.12,
                  width: phonesize.width * 0.22,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: new AssetImage('assets/image/download.jfif'),
                        fit: BoxFit.cover),
                    // boxShadow: [
                    //   BoxShadow(
                    //       color: Colors.black,
                    //       offset: Offset(1.5, 3.0),
                    //       blurRadius: 5.0),
                    // ],
                    borderRadius: BorderRadius.all(Radius.circular(45)),
                  ),
                ),
              ),
            ],
          ),
        ),
        new Divider(),
      ],
    );
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
    return new Padding(
        padding: const EdgeInsets.only(
            top: 10.0, left: 15.0, right: 15.0, bottom: 10.0),
        child: new TextField(
          decoration: InputDecoration(
//          border: InputBorder.none,
            contentPadding: EdgeInsets.fromLTRB(10.0, 10.0, 4.0, 10.0),
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
        ));
  }
}
