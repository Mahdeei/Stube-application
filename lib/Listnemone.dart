import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Listnemone extends StatefulWidget {
  @override
  _ListnemoneState createState() => _ListnemoneState();
}

class _ListnemoneState extends State<Listnemone> {

  @override
  Widget build(BuildContext context) {

    return Material(
     child: new Column(
       children: <Widget>[
         new Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: <Widget>[
             ImageContainer(),
             ImageContainer(),
             ImageContainer()
           ],
          )
       ],
         )


    );
  }
}



class ImageContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var phonesize = MediaQuery.of(context).size ;
    return new Padding(padding: const EdgeInsets.only(bottom: 2.0),child: new Container(
        height: phonesize.width *0.325 ,
        width: phonesize.width * 0.325,
        decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.cover,image: AssetImage('assets/image/download.jfif')),
        )));
  }
}

