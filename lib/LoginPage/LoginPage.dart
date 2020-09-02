import 'package:flutter/material.dart';
import 'package:stubbbb/Other/widget.dart';
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
  String message = "";
  TextEditingController _controllerUser, _controllerPassword;

  @override
  void initState() {
    _controllerUser = new TextEditingController();
    _controllerPassword = new TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    var phoneSize = MediaQuery.of(context).size;

    return new Directionality(
        textDirection: TextDirection.rtl,
        child: new SafeArea(
            top: true,
            child: new Scaffold(
                body: new Stack(
              children: <Widget>[
                ContainerImageLoginPage(phoneSize),
                new ClipPath(
                  clipper: ClippLogin(),
                  child: Container(
                    height: phoneSize.height * 0.6,
                    color: Color(0xff2C003E),
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new SizedBox(height: phoneSize.height * 0.1),
                        new Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 22.0),
                          child: textLoginPage(),
                        ),
                        new SizedBox(height: phoneSize.height * 0.05),
                        new Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                          child: TextFormField(
                            controller: _controllerUser,
                            cursorColor: Colors.white,
                            decoration: inputDecorationLoginPage('نام کاربری', Icons.school),
                          ),
                        ),
                        new Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 30.0),
                          child: TextFormField(
                            controller: _controllerPassword,
                            cursorColor: Colors.white,
                            decoration: inputDecorationLoginPage('کلمه عبور',Icons.lock),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                new Positioned(
                    top: phoneSize.height * 0.6 - 37,
                    right: phoneSize.width * 9 / 16,
                    child: new GestureDetector(
                      onTap: () => getData(),
//                              Navigator.push(
//                                  context,
//                                  MaterialPageRoute(
//                                      builder: (context) =>
//                                      new Directionality(
//                                          textDirection: TextDirection.rtl,
//                                          child: HomePage()))),
                      child: new Container(
                        decoration: decorationLoginPagee(),
                        child: new Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 0),
                          child: isLoading
                              ? new CircularProgressIndicator()
                              : textLoginPageLogin(),
                        ),
                      ),
                    )),
                  new Positioned(
                    top: phoneSize.height * 0.6 - 37,
                    right: phoneSize.width * 1 / 6,
                    child: new GestureDetector(
                      onTap: () => Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage())),
                      child: new Container(
                        decoration: deorationLoginPage(),
                        child: textLoginPageSignup()
                      ),
                    )),
              ],
            ))));
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

    try {
      print(response.data);
      final data = json.decode(response.data);
      if (data['server'] == 'connect seccessful') {
        if (data['status'] == 'data sent is correct') {
          // Navigator.of(context).pushReplacement(
          //     new MaterialPageRoute(builder: (ctx) => )
          // );
        } else {
          setState(() {
            isLoading = false;
            message = 'Please Enter correct';
          });
        }
      } else {
        setState(() {
          message = 'Error in DataBase';
        });
      }
    } catch (e) {
      print(e);
      setState(() {
        isLoading = false;
        message = 'have a Exception';
      });
    }
  }
}


