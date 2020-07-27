import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stubbbb/HomePage/MyHomePage.dart';
import 'package:stubbbb/mahde/home.dart';

import 'AgahPage.dart';

class AgahiPages extends StatefulWidget {
  @override
  _AgahiPagesState createState() => _AgahiPagesState();
}

class _AgahiPagesState extends State<AgahiPages> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: ThemeData(primaryIconTheme: IconThemeData(color: Color(0xff2C003E))),
      debugShowCheckedModeBanner: false,
      home: new Directionality(
        textDirection: TextDirection.rtl,
        child: new SafeArea(
            child: new DefaultTabController(
                length: 3,
                child: new Scaffold(

                  backgroundColor: Color(0xfff2f3f8),
                  drawer: DrawerLists(),
                  appBar: AppBar(
                    actions: <Widget>[
                      new Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: new IconButton(
                              icon: Icon(Icons.filter_list,color: Color(0xff2C003E),),
                              onPressed: (){}))
                    ],
                      backgroundColor: Colors.white,
                  bottom: TabBar(
                  tabs: [
                    Tab(icon: new Text('پروژه ها',style: TextStyle(color: Colors.black),)),
                    Tab(icon: new Text('فروش کتاب',style: TextStyle(color: Colors.black),)),
                    Tab(icon: new Text('کارفرکا',style: TextStyle(color: Colors.black),)),
                    ],
                    )),

                  body: TabBarView(
                    children: [
                      ProjectList(),
                      Icon(Icons.directions_transit),
                      Icon(Icons.directions_bike),
                    ],
                  ),
//        body: ListView.builder(itemBuilder: null),

      ))),
    ));
  }
}




class ProjectList extends StatefulWidget {
  @override
  _ProjectListState createState() => _ProjectListState();
}

class _ProjectListState extends State<ProjectList> {
  @override
  Widget build(BuildContext context) {
    var phonesize = MediaQuery.of(context).size;
    return new ListView.builder(
      itemCount: 20,
      itemBuilder: (BuildContext context,int index)
        => new GestureDetector(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AgahPage()),
            );
          },
          child: new Container(
            margin: const EdgeInsets.only(right: 6.0,bottom: 5.0,top: 5.0,left: 9.0),
            height: phonesize.height *0.15,
            decoration: BoxDecoration(
                boxShadow: [BoxShadow(color: Colors.black54,offset: Offset(0.0,1.0),blurRadius: 5.0)],
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(65.0),
                  topRight: Radius.circular(65.0),
                  topLeft:  Radius.circular(15.0),
                  bottomLeft:  Radius.circular(15.0),
                )),
            child: new Row(
              children: <Widget>[
                new Container(
                  margin: const EdgeInsets.only(right: 4.0,),
                  height: phonesize.height *0.14,
                  width: phonesize.width *0.32,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(65.0),
                          bottomRight: Radius.circular(65.0)),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/image/download.jfif'))),),
                  new Expanded(
                      child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          new Text('طراحی سایت',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
                          new Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              new Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                child: new Text('به یک طراح سایت یا برنامه نویس بک...',overflow: TextOverflow.ellipsis,maxLines: 1,),),
                              new Padding(padding: const EdgeInsets.symmetric(horizontal: 5.0),
                                child: new CircleAvatar(
                                  
                                  maxRadius: 9.0,
                                  child: new Icon(Icons.arrow_forward_ios,color: Colors.white,size: 9.0,),
                                  backgroundColor: Color(0xff2C003E),),)
                            ],),
                          new Row(
                            children: <Widget>[
                              new Container(
                                margin: const EdgeInsets.only(right: 10.0),
                                  decoration: BoxDecoration(
                                      color: Color(0xffD2FAFB),
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.circular(15.0)),
                                  child: new Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 3.0,vertical: 1.0),
                                    child: new Text('گرافیک',style: new TextStyle(color: Color(0xff2c003e),fontSize: 11.0,),),
                                  )),
                              new Container(
                                  margin: const EdgeInsets.only(right: 2.0),
                                  decoration: BoxDecoration(
                                      color: Color(0xffD2FAFB),
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.circular(15.0)),
                                  child: new Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 3.0,vertical: 1.0),
                                    child: new Text('ui',style: new TextStyle(color: Color(0xff2c003e),fontSize: 11.0,),),
                                  )),
                              new Container(
                                  margin: const EdgeInsets.only(right: 2.0),
                                  decoration: BoxDecoration(
                                      color: Color(0xffD2FAFB),
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.circular(15.0)),
                                  child: new Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 3.0,vertical: 1.0),
                                    child: new Text('ux',style: new TextStyle(color: Color(0xff2c003e),fontSize: 11.0,),),
                                  )),
                          ],),
                          new Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              new Padding(padding: const EdgeInsets.symmetric(horizontal: 5.0),child: new Text('قیمت : توافقی'),),
                              new Padding(padding: const EdgeInsets.symmetric(horizontal: 5.0),child: new Text('دقایقی پیش'),)
                          ],)
                          ],))
              ],
            ),
        ),)

    );
  }
}
