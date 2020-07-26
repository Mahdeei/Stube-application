import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stubbbb/HomePage/MyProfilePage.dart';
import 'package:stubbbb/R.dart';
import 'AgahiPages.dart';
import 'KarAmouziPage.dart';
import 'ProfilesPage.dart';



class ListCards extends StatefulWidget {
  @override
  _ListCardsState createState() => _ListCardsState();
}

class _ListCardsState extends State<ListCards> {

   @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

  @override
  Widget build(BuildContext context) {


    var phonesize = MediaQuery.of(context).size;
    return Center(
      child: new Column(

        children: <Widget>[
          new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new MenuItemWidget(model: new ModelMenu(R.titr.daneshjo,R.images.daneshjoHa),phonesize: phonesize,Listener: goToStu,),
              new MenuItemWidget(model: new ModelMenu(R.titr.aagahi,R.images.projects),phonesize: phonesize,Listener: goToProjects,),
            ],
          ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new MenuItemWidget(model: new ModelMenu(R.titr.karamouzu,R.images.karAmouzi),phonesize: phonesize,Listener: goToKarAomuozi,),
              new MenuItemWidget(model: new ModelMenu(R.titr.daneshjoyehefei,R.images.daneshjoyeHerfei),phonesize: phonesize,Listener: goToStu,),
            ],
          )
        ],
      ),
    );
  }


  void goToStu(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ProfilesPages()),
    );
  }
  void goToProjects(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AgahiPages()),
    );
  }
  void goToKarAomuozi(){
  Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => KarAmouziPage()),
  );
}

//void goToDaneshjoyeHerdei(){
//  Navigator.push(
//    context,
//    MaterialPageRoute(builder: (context) => ()),
//  );
//}

}



class ModelMenu {
  String titr;
  String image;

  ModelMenu(this.titr, this.image);
}

class MenuItemWidget extends StatelessWidget {
  ModelMenu model;
  var phonesize;
  var Listener;

  MenuItemWidget({@required this.model, this.phonesize,this.Listener});

  @override
  Widget build(BuildContext context) {
    return new Container(
        child: new GestureDetector(
          onTap: () {
            Listener();
          },
            child: new Card(
              shadowColor: Colors.black,
              elevation: 10.0,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
              margin: const EdgeInsets.only(left: 15.0,right: 5.0,top: 25.0),
              color: Colors.white,
              child: new Container(
                height: phonesize.height * 0.27,
                width: phonesize.width * 0.38,
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: <Widget>[
                    new Padding(
                      padding: const EdgeInsets.only(right: 8.0,top: 10.0),
                      child: new Text(model.titr,style: TextStyle(color: Color(0xfffe346e),fontSize: 20.0,fontWeight: FontWeight.bold),),
                    ),
                    new SizedBox(height: 40.0,),
                    new Padding(padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 8.0),
                        child: new Image(image: AssetImage(model.image),height: 85.0,))
                  ],
                ),
              ),
            ),

        ));
  }
}



