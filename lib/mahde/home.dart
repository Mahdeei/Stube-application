import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:stubbbb/AgahiPages.dart';
import 'package:stubbbb/HomePage/MyHomePage.dart';
import 'package:stubbbb/HomePage/MyMessagePage.dart';
import 'package:stubbbb/HomePage/MyProfilePage.dart';
import 'package:stubbbb/HomePage/MyRequestPage.dart';
import 'package:ff_navigation_bar/ff_navigation_bar.dart';
import 'package:stubbbb/KarAmouziPage.dart';
import '../ProfilesPage.dart';
import '../R.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentindex = 1;
  List<Widget> listwidget = [
    MyRequestPage(),
    MyHomePage(),
    MyMessagePage(),
  ];

  changePage(int indexpage) {
    setState(() {
      currentindex = indexpage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      bottomNavigationBar: FFNavigationBar(
        theme: FFNavigationBarTheme(
//          itemWidth: 50.0,
          barBackgroundColor: Colors.white,
//          selectedItemBorderColor: R.color.banafshKamRang,
          selectedItemBackgroundColor: R.color.red,
          selectedItemIconColor: Colors.white,
          selectedItemLabelColor: R.color.banafshtire,

        ),
        selectedIndex: currentindex,
        onSelectTab: (index) {
          setState(() {
            currentindex = index;
          });
        },
        items: [
          FFNavigationBarItem(

            iconData: Icons.mail,
            label: 'جعبه',
          ),
          FFNavigationBarItem(
            iconData: Icons.home,
            label: 'خانه',
          ),
          FFNavigationBarItem(
            iconData: Icons.chat,
            label: 'پیام ها',
          ),
        ],
      ),
      body: listwidget[currentindex],
    );
  }
}

void goToStu(){
  BuildContext context;
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => ProfilesPages()),
  );
}


class DrawerLists extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    List<ListTile> listdrawer = [
      ListTile(
        leading: new Icon(Icons.person),
        onTap: () {

        },
        title: Text('پروفایل'),
        trailing: Icon(Icons.arrow_forward),
      ),
      ListTile(
        leading: new Icon(Icons.school),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ProfilesPages()),
          );
        },
        title: Text('دانشجوهخا'),
        trailing: Icon(Icons.arrow_forward),
      ),
      ListTile(
        leading: new Icon(Icons.create_new_folder),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AgahiPages(),
          ));
        },
        title: Text('آگهیا'),
        trailing: Icon(Icons.arrow_forward),
      ),
      ListTile(
        leading: new Icon(Icons.work),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => KarAmouziPage()),
          );
        },
        title: Text('کارآموزی'),
        trailing: Icon(Icons.arrow_forward),
      ),
      ListTile(
        leading: new Icon(Icons.block),
        onTap: () {

        },
        title: Text('دانشجوی حرفه ای'),
        trailing: Icon(Icons.arrow_forward),
      ),
      ListTile(
        leading: new Icon(Icons.settings),
        onTap: () {},
        title: Text('تنظیمات'),
        trailing: Icon(Icons.arrow_forward),
      ),
      ListTile(
        leading: new Icon(Icons.exit_to_app),
        onTap: () {},
        title: Text('خروج'),
        trailing: Icon(Icons.arrow_forward),
      ),
    ];
    return Drawer(
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
    );
  }
}




//BottomNavigationBar(
//selectedFontSize: 16.0,
//iconSize: 26.0,
//selectedItemColor: R.color.banafshmain,
//showSelectedLabels: true,
//unselectedItemColor: Colors.black,
//items: <BottomNavigationBarItem>[
//BottomNavigationBarItem(
//icon: Icon(
//Icons.home,
//),
//title: new Text(
//'خانه',
//)),
//BottomNavigationBarItem(
//icon: Icon(Icons.message),
//title: new Text(
//'چت',
//)),
//BottomNavigationBarItem(
//icon: Icon(Icons.markunread),
//title: new Text(
//'جعبه',
//)),
//],
//onTap: changePage,
//backgroundColor: Colors.white,
//currentIndex: currentindex,
//),