import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:grameen_neeti/chatbotmain.dart';
import 'package:grameen_neeti/extras.dart';
import 'package:grameen_neeti/main.dart';
import 'package:grameen_neeti/profiledetails.dart';
import 'package:grameen_neeti/profilee.dart';
import 'package:grameen_neeti/schmeshome.dart';
import 'package:grameen_neeti/tracker.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'dart:ui';

void main() {
  runApp(MaterialApp(
    title: "Hello World",
    home: homepage(),
    debugShowCheckedModeBanner: false,
  ));
}

class homepage extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<homepage> {
  int activeIndex = 0;
  final urlImages = ['assets/img1.jpg', 'assets/img2.jpg', 'assets/img3.jpg'];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text(
                  "Sachin Kumar",
                  style: TextStyle(fontSize: 20),
                ),
                accountEmail: Text(
                  "sachin@gmail.com",
                  style: TextStyle(fontSize: 16),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundColor:
                      Theme.of(context).platform == TargetPlatform.iOS
                          ? Colors.blue
                          : Colors.white,
                  child: Text(
                    "S",
                    style: TextStyle(fontSize: 40.0),
                  ),
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                title: Text(
                  "Profile",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => profiledetail()));
                },
              ),
              ListTile(
                contentPadding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                title: Text(
                  "Schemes",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => schemeshome()));
                },
              ),
              ListTile(
                contentPadding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                title: Text(
                  "Track Your Application",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => tracker()));
                },
              ),
              ListTile(
                contentPadding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                title: Text(
                  "Settings",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => menu()));
                },
              ),
              ListTile(
                contentPadding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                title: Text(
                  "Contact Us",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => menu()));
                },
              ),
              ListTile(
                contentPadding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                title: Text(
                  "Complain",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => menu()));
                },
              ),
              ListTile(
                contentPadding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                title: Text(
                  "logout",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => HomeScreen()));
                },
              ),
            ],
          ),
        ),

        // appbar
        appBar: AppBar(
          //set your height
          flexibleSpace: SafeArea(
            maintainBottomViewPadding: true,
            child: Container(
              margin: EdgeInsets.fromLTRB(60, 3, 0, 0),
              // set your color
              child: Column(
                children: [
                  Container(
                    child: Row(
                      children: [
                        Text(
                          "Grameen Neeti",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 22.0,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                        SizedBox(width: 20.0),
                        IconButton(
                          icon: Icon(Icons.mic),
                          iconSize: 25,
                          onPressed: () {},
                        ),
                        SizedBox(width: 1.0),
                        IconButton(
                          icon: Icon(Icons.notifications_active_outlined),
                          iconSize: 25,
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(Icons.search),
                          iconSize: 25,
                          onPressed: () {},
                        )
                      ],
                    ),
                  ), // set your search bar setting
                ],
              ),
            ),
          ),
        ),
        body: Container(
          color: Color.fromRGBO(199, 228, 238, 500),
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Column(
                children: [
                  Center(
                    child: CarouselSlider.builder(
                      options: CarouselOptions(
                        height: 200,
                        autoPlay: true,
                        reverse: true,
                      ),
                      itemCount: urlImages.length,
                      itemBuilder: (context, index, realIndex) {
                        final urlImage = urlImages[index];
                        return buildImage(urlImage, index);
                      },
                    ),
                  ),
                  SizedBox(height: 20),
                  Card(
                    //elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14)),
                    shadowColor: Colors.blue,
                    color: Colors.white,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(20, 0, 15, 0),
                      width: double.infinity,
                      height: 50,
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Center(
                              child: Text(
                                'All Schemes',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            IconButton(
                              icon: Icon(Icons.arrow_drop_down_circle),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => schemeshome()));
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Card(
                    //elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14)),
                    shadowColor: Colors.blue,
                    color: Colors.white,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(20, 0, 15, 0),
                      width: double.infinity,
                      height: 50,
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                              child: Text(
                                'UPCOMING EVENTS',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14)),
                    shadowColor: Colors.blue,
                    elevation: 10,
                    color: Colors.white,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(20, 0, 15, 0),
                      width: double.infinity,
                      height: 70,
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'PM Adarsh Gram Yojna',
                              textAlign: TextAlign.start,
                              style: TextStyle(fontSize: 19.0),
                            ),
                            Container(
                              child: Align(
                                alignment: Alignment.center,
                                child: IconButton(
                                  icon: Icon(Icons.arrow_drop_down_circle),
                                  onPressed: () {},
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14)),
                    shadowColor: Colors.blue,
                    color: Colors.white,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(20, 0, 15, 0),
                      width: double.infinity,
                      height: 70,
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Text(
                                'Pradhan Mantri Ujjwala Yojana',
                                textAlign: TextAlign.start,
                                style: TextStyle(fontSize: 19.0),
                              ),
                            ),
                            Container(
                              child: Align(
                                alignment: Alignment.center,
                                child: IconButton(
                                  icon: Icon(Icons.arrow_drop_down_circle),
                                  onPressed: () {},
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14)),
                    shadowColor: Colors.blue,
                    color: Colors.white,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(20, 0, 15, 0),
                      width: double.infinity,
                      height: 70,
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Pradhan Mantri Jan Dhan Yojana',
                              textAlign: TextAlign.start,
                              style: TextStyle(fontSize: 19.0),
                            ),
                            Container(
                              child: Align(
                                alignment: Alignment.center,
                                child: IconButton(
                                  icon: Icon(Icons.arrow_drop_down_circle),
                                  onPressed: () {},
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14)),
                    shadowColor: Colors.blue,
                    color: Colors.white,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(20, 0, 15, 0),
                      height: 70,
                      width: double.infinity,
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'PM Suraksha Bima Yojana',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 19.0,
                              ),
                            ),
                            Container(
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: IconButton(
                                  icon: Icon(Icons.arrow_drop_down_circle),
                                  onPressed: () {},
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14)),
                    shadowColor: Colors.blue,
                    color: Colors.white,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(20, 0, 15, 0),
                      width: double.infinity,
                      height: 70,
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'PM Vaya Vandana Yojana',
                              textAlign: TextAlign.start,
                              style: TextStyle(fontSize: 19.0),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 50),
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: IconButton(
                                  icon: Icon(Icons.arrow_drop_down_circle),
                                  onPressed: () {},
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14)),
                    shadowColor: Colors.blue,
                    color: Colors.white,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(20, 0, 15, 0),
                      height: 70,
                      width: double.infinity,
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'PM Suraksha Bima Yojana',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 19.0,
                              ),
                            ),
                            Container(
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: IconButton(
                                  icon: Icon(Icons.arrow_drop_down_circle),
                                  onPressed: () {},
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => chatbotmain()));
          },
          backgroundColor: Colors.blue,
          child: const Icon(Icons.mark_unread_chat_alt),
        ),
      ),
    );
  }

  Widget buildImage(String urlImage, int index) => Container(
        margin: EdgeInsets.symmetric(horizontal: 4),
        color: Colors.white,
        child: Image.asset(
          urlImage,
          fit: BoxFit.cover,
        ),
      );
  Widget buildIndicator() => AnimatedSmoothIndicator(
      activeIndex: activeIndex,
      count: urlImages.length,
      effect: JumpingDotEffect(
        dotWidth: 3,
        dotHeight: 3,
      ));
}
