import 'package:flutter/material.dart';
import 'package:stubbbb/AgahPage.dart';
import 'package:stubbbb/mahde/home.dart';

import '../R.dart';

class MyMessagePage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();


  @override
  Widget build(BuildContext context) {
    return new Directionality(
        textDirection: TextDirection.rtl,
        child: new Scaffold(
          key: _scaffoldKey,
          drawer: DrawerLists(),
          appBar: new AppBar(
            leading: IconButton(
              icon: Icon(Icons.menu,color: R.color.banafshmain,),
              onPressed: () => _scaffoldKey.currentState.openDrawer(),
            ),
            //            title: this.cusSearchBar,
            actions: <Widget>[
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: new IconButton(
                          icon: Icon(Icons.filter_list,color: R.color.banafshmain,), onPressed: () {})),

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
              itemBuilder: (BuildContext context,int index)
              => new Column(
                children: <Widget>[
                  new GestureDetector(

                    child: new Container(
                      width: MediaQuery.of(context).size.width,
                      child: new ListTile(
                        title: new Text('Omeadr'),
                        subtitle: new Text('سلام',style: TextStyle(fontSize: 16.0),),
                        trailing: new Text('8.14 ب.ظ',style: TextStyle(fontSize: 11.0),),
                        leading: new CircleAvatar(
                          backgroundImage: AssetImage('assets/image/dev.jpg',),
                          maxRadius: 30.0,
                        ),
                      ),
                    ),
                    onTap: (){print('pressed chat ');},

                  ),
                  Line(),
                ],
              )
          ),
        ));
  }
}
