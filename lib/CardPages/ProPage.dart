import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:stubbbb/Other/R.dart';
import 'AgahPage.dart';


class ProPage extends StatefulWidget {
  @override
  _ProPageState createState() => _ProPageState();
}



class _ProPageState extends State<ProPage> with SingleTickerProviderStateMixin {
  final bodyGlobalKey = GlobalKey();
  final List<Widget> myTabs = [
    Tab(text: 'مشخصات'),
    Tab(text: 'نظرات'),
    Tab(text: 'نمونه کارها',)
  ];
  TabController _tabController;
  ScrollController _scrollController;

  Widget _head() {
    return new Stack(
      children: <Widget>[
        new Container(
          height: MediaQuery.of(context).size.height * 0.28,
          width: MediaQuery.of(context).size.width,
          color: Color(0xff44143E),
        ),
        new IconButton(
            icon: Icon(
              Icons.share,
              color: Colors.white,
            ),
            onPressed: () {
              print('pressed share');
            }),
        new Column(
//                    mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Directionality(
              textDirection: TextDirection.ltr,
              child: new Column(
                children: <Widget>[
                  new Padding(
                    padding: const EdgeInsets.only(left: 200.0, top: 60.0),
                    child: new Row(
                      children: <Widget>[
                        new Icon(
                          Icons.school,
                          color: Colors.white,
                        ),
                        new SizedBox(
                          width: 3.0,
                        ),
                        new Text(
                          'omeadr',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  new Padding(
                    padding: const EdgeInsets.only(left: 200.0, top: 20.0),
                    child: new Row(
                      children: <Widget>[
                        new Icon(
                          Icons.location_on,
                          color: Colors.white,
                        ),
                        new SizedBox(
                          width: 3.0,
                        ),
                        new Text(
                          'khorasan razavi,mashhad',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            new SizedBox(
              height: 15.0,
            ),
            new Row(
              children: <Widget>[
                new IconButton(
                    icon: Icon(
                      Icons.bookmark,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      print('pressed save');
                    }),
                new GestureDetector(
                  onTap: () {
                    print('pressed ');
                  },
                  child: new Container(
                      alignment: Alignment.center,
//                            height: 20.0,
                      width: 60.0,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15.0)),
                      child: new Padding(
                        padding: const EdgeInsets.only(top: 0.5, bottom: 0.5),
                        child: new Text(
                          'پیام',
                          style: TextStyle(
                              color: Color(0xff2C003E), fontSize: 12.0),
                        ),
                      )),
                ),
                new SizedBox(
                  width: 3.0,
                ),
                new GestureDetector(
                  onTap: () {
                    print('pressed ');
                  },
                  child: new Container(
                      alignment: Alignment.center,
//                            height: 20.0,
                      width: 60.0,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15.0)),
                      child: new Padding(
                        padding: const EdgeInsets.only(top: 0.5, bottom: 0.5),
                        child: new Text(
                          'درخواست',
                          style: TextStyle(
                              color: Color(0xff2C003E), fontSize: 12.0),
                        ),
                      )),
                ),
              ],
            )
          ],
        ),
        new Align(
          alignment: Alignment.centerLeft,
          child: new ClipPath(
//            clipper: ClipPathLine(),   TODO : error clipPath
            child: Container(
                height: MediaQuery.of(context).size.height * 0.28,
                width: MediaQuery.of(context).size.width * 0.5,
                color: Color(0xff2D0827),
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new CircleAvatar(
                      child: new Image.asset('assets/image/download (4).png'),
                      backgroundColor: Colors.white,
                      maxRadius: 40.0,
                    ),
                    new SizedBox(
                      height: 5.0,
                    ),
                    new Text(
                      'امید روینده',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    new Text(
                      'مهندسی برق',
                      style: TextStyle(
                        color: Color(0xff44143E),
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                )),
          ),
        )
      ],
    );
  }


  @override
  void initState() {
    _scrollController = ScrollController();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(_smoothScrollToTop);

    super.initState();
  }

  @override
<<<<<<< HEAD:lib/ProPage.dart
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new Container(
//          height: 50,
        child: new TabBar(
            controller: _tabController,
            indicatorColor: R.color.banafshtire,
            labelStyle: TextStyle(color: R.color.backGround1),
            unselectedLabelColor: R.color.banafshKamRang ,
            labelColor: R.color.banafshtire,
            unselectedLabelStyle: TextStyle(color: Colors.white),
            tabs: <Widget>[
              new Tab(text: 'مشحصات',),
              new Tab(text: 'نمونه کارها',),
              new Tab(text: 'نظرات',),

            ]),),
       new Container(
         height: MediaQuery.of(context).size.height,
          child:  new TabBarView(
           controller: _tabController,
           children: [
             ListOne(),
             ListTwo(),
             ListImages()
           ]),)
      ],
=======
  void dispose() {
    _tabController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  _smoothScrollToTop() {
    _scrollController.animateTo(
      0,
      duration: Duration(microseconds: 300),
      curve: Curves.ease,
>>>>>>> d9c385ef02d4abe638811818253d47b9197c7a6f:lib/CardPages/ProPage.dart
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Directionality(textDirection: TextDirection.rtl, 
        child: new SafeArea(top: true,
            bottom: true,
            child: Scaffold(
          body: NestedScrollView(floatHeaderSlivers: true,
            controller: _scrollController,
            headerSliverBuilder: (context, value) {
              return [
                SliverToBoxAdapter(child: _head()),
                SliverToBoxAdapter(
                  child: TabBar(
                    indicatorColor: R.color.banafshtire,
                    labelStyle: TextStyle(color: R.color.backGround1),
                    unselectedLabelColor: R.color.banafshKamRang,
                    labelColor: R.color.banafshtire,
                    unselectedLabelStyle: TextStyle(color: Colors.white),
                    controller: _tabController,
                    // isScrollable: true,
                    tabs: myTabs,
                  ),
                ),
              ];
            },
            body: Container(
              child: TabBarView(
                controller: _tabController,
                children: [ListOne(), ListTwo(),ListImages()],
              ),
            ),
          ),
        )));
  }
}


class ListOne extends StatefulWidget {
  @override
  _ListOneState createState() => _ListOneState();
}

class _ListOneState extends State<ListOne> {
  @override
  Widget build(BuildContext context) {
    return new Padding(padding: const EdgeInsets.only(top: 0),
    child: new ListView(
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        new Padding(
          padding: const EdgeInsets.only(right: 7.0, top: 18.0),
          child: new Text(
            'یکسال به طور حرفه ای برنامه نویسی اپ کار کردم و فرانت و بک را خودم انجام میدم . لطفا برای صحبت برای هزینه بهم پیام بدید و اینکه کار رو با ضمانت تحویل میدم و از لحاظ کیفیت خیالتان راحت ',
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        new Padding(
            padding:
            const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            child: new Wrap(
              runSpacing: 8.0,
              spacing: 7.0,
              children: <Widget>[
                ObjectTag(
                  tags: 'رنامه نویسی موبایل',
                ),
                ObjectTag(
                  tags: 'ui',
                ),
                ObjectTag(
                  tags: 'ux',
                ),
                ObjectTag(
                  tags: 'رنامه',
                ),
                ObjectTag(
                  tags: 'back end',
                ),
              ],
            )),
      ],
    ),);
  }
}

class ListTwo extends StatefulWidget {
  @override
  _ListTwoState createState() => _ListTwoState();
}

class _ListTwoState extends State<ListTwo> {
  @override
  Widget build(BuildContext context) {
    return new Padding(padding: const EdgeInsets.only(top: 0),
    child: new ListView(
      children: <Widget>[
        new Padding(
          padding: const EdgeInsets.only(right: 15.0, left: 15.0, top: 0.0),
          child: new Text(
            'سوابق کاری',
            style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
          ),
        ),
        new Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: new Text(
            'به مدت دوسال با شرکت ایران کُد همکاری میکردم ، نزدیک به 30 تا پروژه موفق داشتم.عضو تیم طراحان اپلیکیشن های بایو، کیهان، مرداب و شهر به شهر بوده ام.بنیان گذار و طراح و برنامه نویس اپلیکیشن استیوب هم هستم ',
            style: TextStyle(fontSize: 16.0),
          ),
        ),
        Divider(),
        new Padding(
          padding: const EdgeInsets.only(right: 15.0, left: 15.0, top: 10.0),
          child: new Text(
            'سوابق تحصیلی',
            style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
          ),
        ),
        new Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: new Text(
            'بنده در مقطع کارشناسی رشته مهندسی برق در حال تحصیل می باشم.',
            style: TextStyle(fontSize: 16.0),
          ),
        ),
        Divider(),
        new Padding(
          padding: const EdgeInsets.only(right: 15.0, left: 15.0, top: 10.0),
          child: new Text(
            'مدارک و یا گواهینامه های معتبر',
            style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
          ),
        ),
        new Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: new Text(
            'مدرک فنی حرفه ای الکترونیک رو هم دارم .دارای مدرک الپیک دو و مدرک تافل میباشم.',
            style: TextStyle(fontSize: 16.0),
          ),
        ),
        Divider(),
        new Padding(
          padding: const EdgeInsets.only(right: 15.0, left: 15.0, top: 10.0),
          child: new Text(
            'زبان های مسلط',
            style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
          ),
        ),
        new Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: new Text(
            'فارسی، عربی، انگلیسی و ترکی',
            style: TextStyle(fontSize: 16.0),
          ),
        ),
      ],
    ),);
  }
}




class ObjectTag extends StatelessWidget {
  final String tags;

  const ObjectTag({this.tags});
  @override
  Widget build(BuildContext context) {
    return new Container(
        height: 20.0,

        decoration: BoxDecoration(
            color: Color(0xff2D0827),
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(15.0)),
        child:new Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6.0,vertical: 3.0),
          child: new Text(tags,style: new TextStyle(color: Colors.white,fontSize: 10.0,),),
        ));
  }
}
class ListImages extends StatefulWidget {
  @override
  _ListImagesState createState() => _ListImagesState();
}

class _ListImagesState extends State<ListImages> {
  int current = 0;

  List imglist = [
    'assets/image/undraw_folder_files_nweq.png',
    'assets/image/dev.jpg',
    'assets/image/avt.jpg',
    'assets/image/Startup life-rafiki (2).png'
  ];

  @override
  Widget build(BuildContext context) {
    return new GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),itemCount: imglist.length, itemBuilder: (context, index)=>
    new GestureDetector(
      onTap:  () {
                      _showSecondPage(context, imglist[index]);
                    },
        child : new Container(
      margin: const EdgeInsets.fromLTRB(2, 0, 2, 4),
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(imglist[index]),fit: BoxFit.cover)
      ),
    )));
    //   CarouselSlider(
    //   items: imglist
    //       .map((imageAddres) => Builder(
    //     builder: (BuildContext context) {
    //       return Container(
    //           width: MediaQuery.of(context).size.width,
    //           margin: const EdgeInsets.symmetric(
    //               vertical: 16.0, horizontal: 8.0),
    //           decoration: BoxDecoration(color: Colors.black54),
    //           child: new GestureDetector(
    //             child: Image.asset(
    //               imageAddres,
    //               fit: BoxFit.cover,
    //             ),
    //             onTap: () {
    //               // _showSecondPage(context, imageAddres);
    //             },
    //           ));
    //     },
    //   ))
    //       .toList(),
    //   options: CarouselOptions(
    //       height: 160.0,
    //       aspectRatio: 16 / 9,
    //       viewportFraction: 0.8,
    //       initialPage: 0,
    //       enableInfiniteScroll: true,
    //       reverse: true,
    //       autoPlay: true,
    //       autoPlayInterval: Duration(seconds: 3),
    //       autoPlayAnimationDuration: Duration(milliseconds: 800),
    //       autoPlayCurve: Curves.fastOutSlowIn,
    //       enlargeCenterPage: true,
    //       scrollDirection: Axis.horizontal,
    //       onPageChanged: (index, covariant) {
    //         setState(() {
    //           current = index;
    //         });
    //       }),
    // );
  }
}

void _showSecondPage(BuildContext context, imageAddres) {
  Navigator.of(context).push(MaterialPageRoute(
      builder: (cntx) => Scaffold(
            body: new Center(
              child: new Hero(
                tag: 'my-hero-animation-tag',
                child: Image.asset(imageAddres),
              ),
            ),
          )));
}
