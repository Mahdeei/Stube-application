import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:stubbbb/Component/textformfield.dart';
import 'package:stubbbb/LoginPage/SignIn.dart';
import 'package:stubbbb/Other/R.dart';
import 'package:stubbbb/Other/widget.dart';


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

 @override
  Widget build(BuildContext context) {
    var phoneSize = MediaQuery.of(context).size;
    return new Directionality(
            textDirection: TextDirection.rtl,
            child: new SafeArea(
                top: true,
                child: new Scaffold(
                    resizeToAvoidBottomInset: false,
                    body: new Stack(
                      children: <Widget>[
                        new Container(
                          height: phoneSize.height,
                          decoration: decorationSignUp(),
                        ),
                        new Container(
                          padding: const EdgeInsets.symmetric(horizontal: 0.0),
                          height: phoneSize.height,
                          child: new Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              new SizedBox(height: phoneSize.height * 0.09),
                              new Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                                  child: textSignUp()
                              ),
                              new SizedBox(height: phoneSize.height * 0.09),
                              new Form(
                                  key: _formKey,
                                  child: new Container(
                                    padding: const EdgeInsets.symmetric(horizontal: 35),
                                    child: new Column(
                                      children: <Widget>[
                                        InputTextForm(
                                          onSaved: userOnsaved,
                                          color: Colors.white,
                                          lableColor: Colors.white,
                                          lable: 'نام کاربری',
                                          validate: validateSignUp
                                        ),
                                        InputTextForm(
                                          onSaved: passOnsaved,
                                          color: Colors.white,
                                          lableColor: Colors.white,
                                          lable: 'کلمه عبور',
                                          // iconData: Icons.lock,
                                          obscure: true,
                                          validate: validateSignUpPas,
                                          controller: _controller,
                                        ),
                                        InputTextForm(
                                            color: Colors.white,
                                            lableColor: Colors.white,
                                            lable: 'تایید کلمه عبور',
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
                                            validate: validateNameSignUp
                                        ),
                                      ],
                                    ),
                                  )),
                            ],
                          ),
                        ),
                        new Positioned(
                            top: phoneSize.height * 0.75,
                            child: new Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                new Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    new Padding(
                                      padding: const EdgeInsets.only(right: 35, bottom: 10),
                                      child: textSignUpS()
                                    ),
                                    new SizedBox(width: phoneSize.width * .4),
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
                                        padding:const EdgeInsets.only(left: 25),
                                        child: circleSignUp()
                                      ),
                                    )
                                  ],
                                ),
                                new SizedBox(height: phoneSize.height * 0.01),
                                new Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    new Padding(
                                      padding: const EdgeInsets.only(right: 0),
                                      child: new GestureDetector(
                                        onTap: () {
                                          print('pressed1');
                                        },
                                        child: textSignUpLogin(),
                                      ),
                                    ),
                                    new SizedBox(width: phoneSize.width * .6)
                                  ],
                                )
                              ],
                            ))
                      ],
            ))));
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
