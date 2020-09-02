import 'package:flutter/material.dart';
import 'package:stubbbb/CardPages/AgahiPages.dart';
import 'package:stubbbb/Other/widget.dart';
import '../../CardPages/AgahiPages.dart';
import '../../CardPages/KarAmouziPage.dart';
import '../../CardPages/ProfilesPage.dart';
import '../../Other/R.dart';

class ListCards extends StatefulWidget {
  
  @override
  _ListCardsState createState() => _ListCardsState();
}

class _ListCardsState extends State<ListCards> {

  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    var phoneSize = MediaQuery.of(context).size;
    return Center(
      child: new Column(
        children: <Widget>[
          new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new MenuItemWidget(
                model: new ModelMenu(R.titr.daneshjo, R.images.daneshjoHa, R.color.red),
                phoneSize: phoneSize,
                listener: goToStu,
              ),
              new MenuItemWidget(
                model: new ModelMenu(R.titr.aagahi, R.images.projects, R.color.banafshmain),
                phoneSize: phoneSize,
                listener: goToProjects,
              ),
            ],
          ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new MenuItemWidget(
                model: new ModelMenu(R.titr.karamouzu , R.images.karAmouzi , R.color.blueTire),
                phoneSize: phoneSize,
                listener: goToKarAmouozi,
              ),
              new MenuItemWidget(
                model: new ModelMenu(R.titr.daneshjoyehefei , R.images.daneshjoyeHerfei , R.color.red),
                phoneSize: phoneSize,
                listener: goToStu,
              ),
            ],
          )
        ],
      ),
    );
  }

  void goToStu() {
    Navigator.push(context,MaterialPageRoute(builder: (context) => ProfilesPages()));
  }

  void goToProjects() {
    Navigator.push(context,MaterialPageRoute(builder: (context) => AgahiPages()));
  }

  void goToKarAmouozi() {
    Navigator.push(context,MaterialPageRoute(builder: (context) => KarAmouziPage()));
  }
}






