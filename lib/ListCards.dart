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
  var phonesize;
   List<String> images = [
    'assets/image/In progress-amico (1).png',
     'assets/image/download (4).png',
     'assets/image/Startup life-rafiki (2).png',
     'assets/image/undraw_folder_files_nweq.png',]
  ;

   @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

  @override
  Widget build(BuildContext context) {


    phonesize = MediaQuery.of(context).size;
    return Center(
      child: new Column(

        children: <Widget>[
          new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new MenuItemWidget(model: new ModelMenu(R.titr.daneshjo,R.images.daneshjoHa),phonesize: phonesize,Listener: goToStu,),
              new MenuItemWidget(model: new ModelMenu(R.titr.aagahi,R.images.projects),phonesize: phonesize,Listener: goToStu,),
//              new GestureDetector(
//                onTap: (){
//                  Navigator.push(
//                    context,
//                    MaterialPageRoute(builder: (context) => AgahiPages()),
//                  );},
//                child: new Card(
//
//                  shadowColor: Colors.black,
//                  elevation: 10.0,
//                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
//                  margin: const EdgeInsets.only(left: 15.0,right: 5.0,top: 25.0),
//                  color:R.color.primary,
//                  child: new Container(
//                    height: phonesize.height * 0.27,
//                    width: phonesize.width * 0.38,
//                    child: new Column(
//                      crossAxisAlignment: CrossAxisAlignment.start,
//
//                      children: <Widget>[
//                        new Padding(padding: const EdgeInsets.only(right: 8.0,top: 10.0),child: new Text(listhome[2],style: TextStyle(color: Color(0xfffe346e),fontSize: 20.0,fontWeight: FontWeight.bold),),),
//                        new SizedBox(height: 40.0,),
//                        new Padding(padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 8.0),
//                            child: new Image(image: AssetImage(images[3]),height: 85.0,))
//                      ],
//                    ),
//                  ),
//                ),
//              )
            ],
          ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new GestureDetector(
                onTap: (){
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => KarAmouziPage()),
                  );
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
                        new Padding(padding: const EdgeInsets.only(right: 8.0,top: 10.0),child: new Text(R.titr.aagahi,style: TextStyle(color: Color(0xfffe346e),fontSize: 20.0,fontWeight: FontWeight.bold),),),
                        new SizedBox(height: 40.0,),
                        new Padding(padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 8.0),
                            child: new Image(image: AssetImage(images[0]),height: 85.0,))
                      ],
                    ),
                  ),
                ),
              ),
              new GestureDetector(
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
                        new Padding(padding: const EdgeInsets.only(right: 15.0,top: 10.0),child: new Text(R.titr.daneshjoyehefei,style: TextStyle(color: Color(0xfffe346e),fontSize: 18.0,fontWeight: FontWeight.bold),),),
                        new SizedBox(height: 40.0,),
                        new Padding(padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 8.0),
                            child: new Image(image: AssetImage(images[2]),height: 85.0,))
                      ],
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }


  void goToStu(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ProfilesPage()),
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

  Widget getStuWidget() {
    return new GestureDetector(
      onTap : () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ProfilesPage()),
        );
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
                child: new Text(R.titr.karamouzu,style: TextStyle(color: Color(0xfffe346e),fontSize: 20.0,fontWeight: FontWeight.bold),),
              ),
              new SizedBox(height: 40.0,),
              new Padding(padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 8.0),
                  child: new Image(image: AssetImage(images[1]),height: 85.0,))
            ],
          ),
        ),
      ),
    );
  }
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
          child: new GestureDetector(
            onTap : () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilesPage()),
              );
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
          )
        ));
  }
}

