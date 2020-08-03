import 'package:flutter/material.dart';
import 'package:stubbbb/LoginPage.dart';
import 'LoginPage.dart';
class WelcomePage extends StatefulWidget {

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {

  @override
  Widget build(BuildContext context) {

    return new Directionality(textDirection: TextDirection.rtl,
        child: new SafeArea(
            child: new Scaffold(
              body: new Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: new BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/image/back.jpg'),
                        fit: BoxFit.cover
                    )
                ),
                child: new Column(
                  children: <Widget>[
                    new SizedBox(
                      height: MediaQuery.of(context).size.height*0.08,
                    ),
                    new Align(alignment: Alignment.centerRight,
                        child:new Padding(padding: const EdgeInsets.only(right: 20),
                            child: new Text('Stub',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 38,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic),))),
                    new Align(alignment: Alignment.centerRight,
                        child:new Padding(padding: const EdgeInsets.only(right: 10),
                            child: new Text('یاد بگیر که',style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.normal,
                                fontStyle: FontStyle.normal),))),
                    new Align(alignment: Alignment.centerRight,
                        child:new Padding(padding: const EdgeInsets.only(right: 30),
                            child: new Text('موفق باشی ..',style: TextStyle(
                                color: Colors.white,
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.normal),))),
                    new SizedBox(
                      height: MediaQuery.of(context).size.height*0.58,
                    ),
                    new Row(mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        new GestureDetector(
                          child: new Container(height: MediaQuery.of(context).size.height*0.081,
                              width: MediaQuery.of(context).size.width*0.4,
                              margin: const EdgeInsets.symmetric(horizontal: 20.0),
                              decoration: BoxDecoration(color: Colors.redAccent,
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                              child:new Align(alignment: Alignment.center,
                                  child: new Container(
                                    child: new Text(
                                      'برو بریم!',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(color: Colors.white,fontSize: 22.0,fontWeight: FontWeight.bold),),
                                  ),
                                )
                            ),
                          onTap: () => Navigator.push(context,MaterialPageRoute(builder: (context)=>  LoginPage())),
                        )
                      ],
                    )

                  ],
                ),
              ),
            )
        )
    );
  }
}