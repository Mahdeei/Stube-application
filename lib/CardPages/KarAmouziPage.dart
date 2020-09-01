import 'package:flutter/material.dart';
import 'package:stubbbb/Other/R.dart';
import 'package:stubbbb/Other/widget.dart';
import 'KaPage.dart';
import 'package:stubbbb/mahde/home.dart';

class KarAmouziPage extends StatefulWidget {
  @override
  _KarAmouziPageState createState() => _KarAmouziPageState();
}

class _KarAmouziPageState extends State<KarAmouziPage> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        theme: ThemeData(
            primaryIconTheme: IconThemeData(color: Color(0xff2C003E))),
        debugShowCheckedModeBanner: false,
        home: new Directionality(
            textDirection: TextDirection.rtl,
            child: new SafeArea(
              child: new Scaffold(
                floatingActionButton: new FloatingActionButton(
                  onPressed: () {
                    print('Pressed');
                  },
                  backgroundColor: R.color.banafshmain,
                  child: new Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
                backgroundColor: Color(0xfff2f3f8),
                drawer: DrawerLists(),
                appBar: AppBar(
                  actions: <Widget>[
                    new Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: new IconButton(
                            icon: Icon(
                              Icons.filter_list,
                              color: Color(0xff2C003E),
                            ),
                            onPressed: () {}))
                  ],
                  backgroundColor: Colors.white,
                ),
                body: KarAmouziListList(),
              ),
            )));
  }
}

class KarAmouziListList extends StatefulWidget {
  @override
  _KarAmouziListListState createState() => _KarAmouziListListState();
}

class _KarAmouziListListState extends State<KarAmouziListList> {
  @override
  Widget build(BuildContext context) {
    var phonesize = MediaQuery.of(context).size;
    return new ListView.builder(
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) => new GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => KaPage()),
                );
              },
              child: new Container(
                margin: const EdgeInsets.only(
                    right: 6.0, bottom: 5.0, top: 10.0, left: 9.0),
                height: phonesize.height * 0.15,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black54,
                          offset: Offset(0.0, 1.0),
                          blurRadius: 5.0)
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(65.0),
                      topRight: Radius.circular(65.0),
                      topLeft: Radius.circular(15.0),
                      bottomLeft: Radius.circular(15.0),
                    )),
                child: new Row(
                  children: <Widget>[
                    new Container(
                      margin: const EdgeInsets.only(
                        right: 4.0,
                        left: 3.0
                      ),
                      height: phonesize.height * 0.14,
                      width: phonesize.width * 0.32,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(65.0),
                              bottomRight: Radius.circular(65.0)),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/image/download.jfif'))),
                    ),
                    new Expanded(
                        child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Text(
                          'برنامه نویس اپلیکیشن',
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.bold),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        new Text(
                          'تعدادی دانشجوی کامپیوتر جهت کاراموزی نیازمندیم ...',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        new Row(
                          children: <Widget>[
                            new Padding(
                              padding: const EdgeInsets.only(right: 5.0),
                              child: new Text(
                                'شرکت ایران سرور',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: TextStyle(
                                  fontSize: 12.0,
                                ),
                              ),
                            ),
                            new Text(
                              '|',
                              style: TextStyle(
                                  fontSize: 18.0, fontWeight: FontWeight.bold),
                            ),
                            new Text(
                              'ار اموزی منجر به استخدام',
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: TextStyle(
                                fontSize: 12.0,
                              ),
                            ),
                            new Padding(
                              padding:
                                  const EdgeInsets.only(left: 5.0, right: 20.0),
                              child: new CircleAvatar(
                                maxRadius: 9.0,
                                child: new Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white,
                                  size: 9.0,
                                ),
                                backgroundColor: Color(0xff2C003E),
                              ),
                            )
                          ],
                        ),
                        new Row(
                          children: <Widget>[
                            new Container(
                                margin: const EdgeInsets.only(right: 10.0),
                                decoration: BoxDecoration(
                                    color: Color(0xffD2FAFB),
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(15.0)),
                                child: new Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 3.0, vertical: 1.0),
                                  child: new Text(
                                    'گرافیک',
                                    style: new TextStyle(
                                      color: Color(0xff2c003e),
                                      fontSize: 11.0,
                                    ),
                                  ),
                                )),
                            new Container(
                                margin: const EdgeInsets.only(right: 2.0),
                                decoration: BoxDecoration(
                                    color: Color(0xffD2FAFB),
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(15.0)),
                                child: new Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 3.0, vertical: 1.0),
                                  child: new Text(
                                    'ui',
                                    style: new TextStyle(
                                      color: Color(0xff2c003e),
                                      fontSize: 11.0,
                                    ),
                                  ),
                                )),
                            new Container(
                                margin: const EdgeInsets.only(right: 2.0),
                                decoration: BoxDecoration(
                                    color: Color(0xffD2FAFB),
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(15.0)),
                                child: new Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 3.0, vertical: 1.0),
                                  child: new Text(
                                    'ux',
                                    style: new TextStyle(
                                      color: Color(0xff2c003e),
                                      fontSize: 11.0,
                                    ),
                                  ),
                                )),
                          ],
                        ),
                        new Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8.0,
                            ),
                            child: new Row(
                              children: <Widget>[
                                new Icon(
                                  Icons.location_city,
                                  size: 8.0,
                                  color: Color(0xff2C003E),
                                ),
                                new SizedBox(
                                  width: 1.0,
                                ),
                                new Text(
                                  'مشهد،وکیل آباد 56 ، مجتمع احسان',
                                  style: TextStyle(fontSize: 8.0),
                                ),
                              ],
                            )),
                      ],
                    ))
                  ],
                ),
              ),
            ));
  }
}
