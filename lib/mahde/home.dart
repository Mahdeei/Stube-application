import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:stubbbb/CardPages/AgahiPages.dart';
import 'package:stubbbb/FirstPage/HomePage/HomePage.dart';
import 'package:ff_navigation_bar/ff_navigation_bar.dart';
import 'package:stubbbb/CardPages/KarAmouziPage.dart';
import 'package:stubbbb/FirstPage/MessagePage/MessagePage.dart';
import 'package:stubbbb/FirstPage/RequestPage/RequestPage.dart';
import 'package:stubbbb/Other/R.dart';
import '../CArdPages/ProfilesPage.dart';



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

// void goToStu() {
//   BuildContext context;
//   Navigator.push(
//     context,
//     MaterialPageRoute(builder: (context) => ProfilesPages()),
//   );
// }
