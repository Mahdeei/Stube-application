import 'dart:convert';

import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'package:stubbbb/Component/textformfield.dart';
import 'package:stubbbb/LoginPage/SignIn.dart';
import 'package:stubbbb/Other/R.dart';

class SignUp extends StatefulWidget {
  final String phone;
  final int type;
  SignUp({this.phone, this.type});
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  var url = "http://192.168.56.1//Stub/SignUp.php";
  final _formKey = GlobalKey<FormState>();
  bool onpresscode = true;
  TextEditingController _controller = new TextEditingController();
  String usernameCon;
  String passCon;
  String nameCon;
  Map _body;
  void setBody() async {
    _body = await signUp();
  }

  void userOnsaved(String value) {
    usernameCon = value;
  }

  void passOnsaved(String value) {
    passCon = value;
  }

  void nameOnsaved(String value) {
    nameCon = value;
  }

  // @override
  Widget build(BuildContext context) {
    var phonesize = MediaQuery.of(context).size;
    return new MaterialApp(
        debugShowCheckedModeBanner: false,
        home: new Directionality(
            textDirection: TextDirection.rtl,
            child: new SafeArea(
                top: true,
                child: new Scaffold(
                    resizeToAvoidBottomInset: false,
                    body: new Stack(
                      children: <Widget>[
                        new Container(
                          height: phonesize.height,
                          // width: phonesize.width,
                          decoration: new BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    'assets/image/backreg.png',
                                  ))),
                        ),
                        new Container(
                          padding: const EdgeInsets.symmetric(horizontal: 0.0),
                          height: phonesize.height,
                          child: new Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              new SizedBox(
                                height: phonesize.height * 0.09,
                              ),
                              new Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 18.0),
                                  child: new Text('خوش اومدی',
                                      style: TextStyle(
                                          fontSize: 35.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white))),
                              new SizedBox(
                                height: phonesize.height * 0.09,
                              ),
                              new Form(
                                  key: _formKey,
                                  child: new Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 35),
                                    child: new Column(
                                      children: <Widget>[
                                        InputTextForm(
                                          onSaved: userOnsaved,
                                          color: Colors.white,
                                          lableColor: Colors.white,
                                          lable: 'نام کاربری',
                                          // iconData: Icons.school,
                                          obscure: false,
                                          validate: (String value) {
                                            if (!value.contains(new RegExp(
                                                r"^(?=.{3,20}$)(?![_.])(?!.*[_.]{2})[a-zA-Z0-9._]+(?<![_.])$"))) {
                                              return 'not true';
                                            }
                                          },
                                        ),
                                        InputTextForm(
                                          onSaved: passOnsaved,
                                          color: Colors.white,
                                          lableColor: Colors.white,
                                          lable: 'کلمه عبور',
                                          // iconData: Icons.lock,
                                          obscure: true,
                                          validate: (String value) {
                                            if (value.length < 6) {
                                              return 'not true';
                                            }
                                          },
                                          controller: _controller,
                                        ),
                                        InputTextForm(
                                            color: Colors.white,
                                            lableColor: Colors.white,
                                            lable: 'تایید کلمه عبور',
                                            // iconData: Icons.lock,
                                            obscure: true,
                                            validate: (String value) {
                                              if (value != _controller.text) {
                                                return 'not true';
                                              }
                                            }),
                                        InputTextForm(
                                            onSaved: nameOnsaved,
                                            color: Colors.white,
                                            lableColor: Colors.white,
                                            lable: 'نام و نام خانوادگی',
                                            // iconData: Icons.person,
                                            obscure: false,
                                            validate: (String value) {
                                              // ignore: missing_return
                                              if (value.contains(new RegExp(
                                                  r"^(?=.{3,20}$)(?![_.])(?!.*[_.]{2})[a-zA-Z0-9._]+(?<![_.])$"))) {
                                                return 'not true';
                                              } else if (value.isEmpty)
                                                return 'not';
                                            }),
                                      ],
                                    ),
                                  )),
                            ],
                          ),
                        ),
                        new Positioned(
                            top: phonesize.height * 0.75,
                            child: new Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                new Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    new Padding(
                                      padding: const EdgeInsets.only(
                                          right: 35, bottom: 10),
                                      child: new Text(
                                        'ثبت نام',
                                        style: new TextStyle(
                                            color: Colors.white,
                                            fontSize: 30,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ),
                                    new SizedBox(
                                      width: phonesize.width * .4,
                                    ),
                                    new GestureDetector(
                                      onTap: () {
                                        if (_formKey.currentState.validate()) {
                                          _formKey.currentState.save();
                                          setBody();
                                          if (_body['status'] == 'created') {
                                            Navigator.of(context)
                                                .pushReplacement(
                                                    new MaterialPageRoute(
                                                        builder: (context) =>
                                                            new SignIn()));
                                          }
                                        }
                                      },
                                      child: new Padding(
                                        padding:
                                            const EdgeInsets.only(left: 25),
                                        child: new CircleAvatar(
                                          radius: 40,
                                          backgroundColor: R.color.banafshmain,
                                          child: new Icon(
                                            Icons.arrow_forward,
                                            size: 40,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                new SizedBox(
                                  height: phonesize.height * 0.01,
                                ),
                                new Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    new Padding(
                                      padding: const EdgeInsets.only(right: 0),
                                      child: new GestureDetector(
                                        onTap: () {
                                          print('pressed1');
                                        },
                                        child: new Text(
                                          'ورود',
                                          style: TextStyle(
                                              color: Colors.white,
                                              decoration:
                                                  TextDecoration.underline,
                                              fontSize: 18),
                                        ),
                                      ),
                                    ),
                                    new SizedBox(
                                      width: phonesize.width * .6,
                                    )
                                  ],
                                )
                              ],
                            ))
                      ],
                    )))));
  }

  Future signUp() async {
    var response = await http.post(url, body: {
      'phonenumber': widget.phone,
      'type': '${widget.type}',
      'username': usernameCon,
      'password': passCon,
      'name': nameCon
    });
    final body = json.decode(response.body);
    // await storeUserData(body);
    print(body);
    return body;
  }

//   storeUserData(Map body) async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     prefs.setString('user-apiToken', body['apiToken']);
//     prefs.setString('username', body['username']);
//   }
}
