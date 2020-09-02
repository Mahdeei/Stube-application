import 'package:flutter/material.dart';
import 'package:stubbbb/mahde/home.dart';
import 'package:dio/dio.dart';
import 'dart:convert';
import 'dart:io';


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  bool isLoading = false;
  String message="";
  TextEditingController _controllerUser,_controllerPassword;

  @override
  void initState() {
    _controllerUser = new TextEditingController();
    _controllerPassword = new TextEditingController();
  }





  @override
  Widget build(BuildContext context) {
    var phonesize = MediaQuery.of(context).size;

    return new Directionality(
            textDirection: TextDirection.rtl,
            child: new SafeArea(
              top: true,
              child: new Scaffold(
                body: new Stack(
                  children: <Widget>[
                    ContainerImage(phonesize),
                    new ClipPath(
                      clipper: ClippLogin(),
                      child:Container(
                        height: phonesize.height*0.6,
                        color: Color(0xff2C003E),
                        child: new Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            new SizedBox(height: phonesize.height*0.1,),
                            new Padding(padding: const EdgeInsets.symmetric(horizontal: 22.0),
                                child: new Text('ورود',style: TextStyle(fontSize: 35.0,fontWeight: FontWeight.bold,color: Colors.white),),
                              ),
                            new SizedBox(height: phonesize.height*0.05,),
                            new Padding(padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                              child: TextFormField(
                                controller: _controllerUser,
                                cursorColor: Colors.white,
                                decoration: InputDecoration(prefixIcon: Icon(Icons.school,color: Colors.white,),
                                    labelText: 'نام کاربری',
                                    labelStyle: TextStyle(color: Colors.white),
                                    border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                                    fillColor: Colors.white,
                                    focusColor: Colors.white,
                                    hoverColor: Colors.white,
                                    enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white))
                                ),

                              ),),
                            new Padding(padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                              child: TextFormField(
                                controller: _controllerPassword,
                                cursorColor: Colors.white,
                                decoration: InputDecoration(prefixIcon: Icon(Icons.lock,color: Colors.white,),
                                    labelText: 'کلمه عبور',
                                    labelStyle: TextStyle(color: Colors.white),
                                    border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                                    fillColor: Colors.white,
                                    focusColor: Colors.white,
                                    hoverColor: Colors.white,
                                    enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white))
                                ),

                              ),)
                          ],
                        ),
                      ),
                    ),
                    new Positioned(top: phonesize.height*0.6-37,
                        right: phonesize.width*9/16,
                        child: new GestureDetector(
                          onTap: ()=>
                            getData(),
//                              Navigator.push(
//                                  context,
//                                  MaterialPageRoute(
//                                      builder: (context) =>
//                                      new Directionality(
//                                          textDirection: TextDirection.rtl,
//                                          child: HomePage()))),
                          child: new Container(
                            decoration: BoxDecoration(
                                boxShadow: [BoxShadow( color: Colors.black,
                                  offset: Offset(2,2),
                                  blurRadius: 7)],
                                  color: Color(0xffFE346E),
                                borderRadius: BorderRadius.circular(30.0)
                          ),
                            child: new Padding(padding: const EdgeInsets.symmetric(horizontal: 35.0,vertical: 0),
                              child: isLoading
                                  ? new CircularProgressIndicator()
                                  :new Text('ورود',style: TextStyle(fontSize:25,color: Colors.white),textAlign: TextAlign.center,),),
                          ),
                        )),
                    new Positioned(top: phonesize.height*0.6-37,
                        right: phonesize.width*1/6,
                        child: new GestureDetector(
                          onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage())),
                          child: new Container(decoration: BoxDecoration(color: Colors.white,boxShadow: [BoxShadow(
                              color: Colors.black,
                              offset: Offset(2,2),
                              blurRadius: 7
                          )],
                              borderRadius: BorderRadius.circular(30.0)
                          ),
    //                    height: 20.0,

                            child: new Padding(padding: const EdgeInsets.symmetric(horizontal: 25.0,vertical: 0),
                              child: new Text(
                                    'ثبت نام',
                                    style: TextStyle(fontSize:25,color: Color(0xff2C003E)),textAlign: TextAlign.center,),),
                          ),
                        )),
                  ],
                )
        )));
  }

  getData() async {
    setState(() {
      isLoading = true;
    });

    Dio dio = new Dio();
    Response response = await dio.post('http://192.168.1.7/dbStub/',
        data: new FormData.fromMap({
          "username": _controllerUser,
          "password": _controllerPassword,
        }),
        options: new Options(contentType: "application/x-www-form-urlencoded"));

    try{
      print(response.data);
      final data = json.decode(response.data);
      if(data['server'] == 'connect seccessful'){
        if(data['status']=='data sent is correct'){
          // Navigator.of(context).pushReplacement(
          //     new MaterialPageRoute(builder: (ctx) => )
          // );
        }else{
          setState(() {
            isLoading = false;
            message = 'Please Enter correct';
          });
        }
      }else{
        setState(() {
          message = 'Error in DataBase';
        });
      }
    }catch(e){
      print(e);
      setState(() {
        isLoading = false;
        message = 'have a Exception';
      });

    }


  }
}


class ClippLogin extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    Path path = new Path();
    path.lineTo(0, 0);
    path.lineTo(0, size.height-30);
    path.quadraticBezierTo(size.width/2,size.height,size.width, size.height-30);
//    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw false;
  }

}

Widget ContainerImage(var phonesize){
  return new Container(color: Colors.white,
    height: phonesize.height,
    width: phonesize.width,
    child: new Align(alignment: Alignment.bottomLeft,
        child: new Opacity(opacity: 0.25,
            child: new Image(image: AssetImage('assets/image/hom.png',),height: phonesize.height*0.4,))),);
}
























