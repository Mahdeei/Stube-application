import 'package:flutter/material.dart';
import 'package:stubbbb/CardPages/AgahiPages.dart';
import 'package:stubbbb/CardPages/KarAmouziPage.dart';
import 'package:stubbbb/CardPages/ProfilesPage.dart';
import 'R.dart';



class ModelMenu {
  String titr;
  String image;
  Color color;
  ModelMenu(this.titr, this.image, this.color);
}

BoxDecoration decorationLoginPagee(){
  return BoxDecoration(
      boxShadow: [
        BoxShadow(
            color: Colors.black,
            offset: Offset(2, 2),
            blurRadius: 7)
      ],
      color: Color(0xffFE346E),
      borderRadius: BorderRadius.circular(30.0));
}

BoxDecoration deorationLoginPage(){
  return BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(
            color: Colors.black,
            offset: Offset(2, 2),
            blurRadius: 7)
      ],
      borderRadius: BorderRadius.circular(30.0));
}

BoxDecoration decorationHomePage(){
  return BoxDecoration(
      color: R.color.banafshmain,
      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(35.0)));
}

BoxDecoration decorationImageHomePage(){
  return BoxDecoration(
      shape: BoxShape.circle,
      image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/image/download.jfif'))
  );
}


BoxDecoration decorationImageSignin(){
  return new BoxDecoration(
      image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            'assets/image/backlog.png',
      )));
}

BoxDecoration decorationSignin(){
  return new BoxDecoration(
      borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(40),
          bottomRight: Radius.circular(40)));
}

BoxDecoration decorationSignUp(){
  return new BoxDecoration(
      image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            'assets/image/backreg.png',
          )));
}



InputDecoration inputDecorationLoginPage(String labelText,IconData icon){
  return InputDecoration(
      prefixIcon: Icon(icon,color: Colors.white,),
      labelText: labelText,
      labelStyle: TextStyle(color: Colors.white),
      border: UnderlineInputBorder(
          borderSide:
          BorderSide(color: Colors.white)),
      fillColor: Colors.white,
      focusColor: Colors.white,
      hoverColor: Colors.white,
      enabledBorder: UnderlineInputBorder(
          borderSide:
          BorderSide(color: Colors.white)));
}

Text textSignUp(){
  return new Text('خوش اومدی',
      style: TextStyle(
          fontSize: 35.0,
          fontWeight: FontWeight.bold,
          color: Colors.white));
}

Text textSignUpS(){
  return new Text(
    'ثبت نام',
    style: new TextStyle(
        color: Colors.white,
        fontSize: 30,
        fontWeight: FontWeight.w700),
  );
}

Text textSignUpLogin(){
  return new Text(
    'ورود',
    style: TextStyle(
        color: Colors.white,
        decoration:
        TextDecoration.underline,
        fontSize: 18),
  );
}

String validateSignUpPas(String value) {
  if (value.length < 6) {
    return 'not true';
  }
}

String validateNameSignUp(String value) {
  if (value.contains(new RegExp(
      r"^(?=.{3,20}$)(?![_.])(?!.*[_.]{2})[a-zA-Z0-9._]+(?<![_.])$"))) {
    return 'not true';
  } else if (value.isEmpty)
    return 'not';
}

String validateSignUp(String value) {
  if (!value.contains(new RegExp(
      r"^(?=.{3,20}$)(?![_.])(?!.*[_.]{2})[a-zA-Z0-9._]+(?<![_.])$"))) {
    return 'not true';
  }
}

Text textSplashScreen(){
  return new Text(
    'استیوب',
    style: new TextStyle(fontSize: 30.0),
  );
}

Text textSignIn(){
  return new Text('منتظرت بودیم !',
      style: TextStyle(
          fontSize: 35.0,
          fontWeight: FontWeight.bold,
          color: Colors.white));
}

Text textSignInLogin(){
  return  new Text(
    'ورود',
    style: new TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w700),
  );
}

Text textSignInPage(){
  return new Text(
    'ثبت نام',
    style: TextStyle(
        decoration: TextDecoration.underline,
        fontSize: 17),
  );
}

Text textSigInForget(){
  return new Text(
    'فراموشی گلمه عبور',
    style: TextStyle(
        decoration: TextDecoration.underline,
        fontSize: 17),
  );
}

Text textLoginPage(){
  return new Text('ورود',style: TextStyle(fontSize: 35.0,fontWeight: FontWeight.bold,color: Colors.white),);
}

Text textLoginPageLogin(){
  return new Text(
    'ورود',
    style: TextStyle(
        fontSize: 25, color: Colors.white),
    textAlign: TextAlign.center,
  );
}

Padding textLoginPageSignup(){
  return new Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 0),
      child: new Text(
        'ثبت نام',
        style: TextStyle(
            fontSize: 25, color: Color(0xff2C003E)),
        textAlign: TextAlign.center,
      )
  );
}

TextStyle styleHomePage(){
  return TextStyle(
      color: Colors.white,
      fontSize: 22.0,
      fontWeight: FontWeight.bold);
}

CircleAvatar circleAvatarSignIn(){
  return new CircleAvatar(
    radius: 40,
    backgroundColor: R.color.banafshmain,
    child: new Icon(
      Icons.arrow_forward,
      size: 40,
    ),
  );
}

CircleAvatar circleSignUp(){
  return new CircleAvatar(
    radius: 40,
    backgroundColor: R.color.banafshmain,
    child: new Icon(
      Icons.arrow_forward,
      size: 40,
    ),
  );
}

AppBar appBarHomePage() {
  return new AppBar(actions: <Widget>[
    new IconButton(
        icon: Icon(
          Icons.person,
          color: Colors.white,
          size: 28,
        ),
        onPressed: () {})
  ], elevation: 0.0, backgroundColor: R.color.banafshmain);
}

AppBar appBarMessagePage(_scaffoldKey) {
  // final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  return new AppBar(
    leading: IconButton(
      icon: Icon(
        Icons.menu,
        color: R.color.banafshmain,
      ),
      onPressed: () => _scaffoldKey.currentState.openDrawer(),
    ),
    //            title: this.cusSearchBar,
    actions: <Widget>[
      new Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          new Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: new IconButton(
                  icon: Icon(
                    Icons.filter_list,
                    color: R.color.banafshmain,
                  ),
                  onPressed: () {})),
        ],
      )
    ],
    backgroundColor: Colors.white,
    elevation: 5.0,
    bottomOpacity: 25.0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        bottom: Radius.circular(30),
      ),
    ),
  );
}


Container containerError(){
  return new Container(
      child: new Text(
        "کاربر یافت نشد",
        style: TextStyle(
            color: Colors.red,
            fontSize: 17),
      ));
}

Container containerSplash(){
  return new Container(
    decoration: new BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/image/drawing.png'))),
  );
}

Container ContainerImageLoginPage(var phonesize){
  return new Container(color: Colors.white,
    height: phonesize.height,
    width: phonesize.width,
    child: new Align(alignment: Alignment.bottomLeft,
        child: new Opacity(opacity: 0.25,
            child: new Image(image: AssetImage('assets/image/hom.png',),height: phonesize.height*0.4,))),);
}


class DrawerLists extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<ListTile> listdrawer = [
      ListTile(
        leading: new Icon(Icons.person),
        onTap: () {},
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
              MaterialPageRoute(
                builder: (context) => AgahiPages(),
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
        onTap: () {},
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


class Headers extends StatelessWidget {
  var username;
  @override
  Widget build(BuildContext context) {
    var sizePhone = MediaQuery.of(context).size;
    return new Container(
      decoration: decorationHomePage(),
      height: sizePhone.height * 0.16,
      child: new Column(
        children: <Widget>[
          new Padding(
            padding: const EdgeInsets.only(right: 20.0, top: 0.0),
            child: new Row(
              children: <Widget>[
                new Container(
                    margin: const EdgeInsets.only(left: 5.0, top: 10.0),
                    height: 70.0,
                    width: 70.0,
                    decoration: decorationImageHomePage()
                ),
                new SizedBox(width: 10.0),
                new Positioned(
                    child: new Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Text('سید امید روینده',style: styleHomePage()),
                      ],
                    )
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}


class MenuItemWidget extends StatelessWidget {

  ModelMenu model;
  var phoneSize;
  var listener;

  MenuItemWidget({@required this.model, this.phoneSize, this.listener});

  @override
  Widget build(BuildContext context) {
    return new Container(
        child: new GestureDetector(
          onTap: () {
            listener();
          },
          child: new Card(
            shadowColor: Colors.black,
            elevation: 10.0,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
            margin: const EdgeInsets.only(left: 15.0, right: 5.0, top: 25.0),
            color: Colors.white,
            child: new Container(
              height: phoneSize.height * 0.27,
              width: phoneSize.width * 0.38,
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Align(
                    alignment: Alignment.topCenter,
                    child: new Image(
                      image: AssetImage(model.image),
                      height: 120.0,
                    ),
                  ),
                  new SizedBox(
                    height: 20.0,
                  ),
                  new Align(
                    alignment: Alignment.bottomCenter,
                    child: new Text(
                      model.titr,
                      style: TextStyle(
                          color: model.color,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

class ClippLogin extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    Path path = new Path();
    path.lineTo(0, 0);
    path.lineTo(0, size.height - 30);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 30);
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