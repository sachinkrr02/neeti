import 'package:flutter/material.dart';
import 'package:grameen_neeti/schemes.dart';
import 'package:grameen_neeti/schmeshome.dart';

void main() {
  runApp(const womenschemes());
}

class womenschemes extends StatelessWidget {
  const womenschemes({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Women',
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => schemeshome()));
                  Scaffold.of(context).openDrawer();
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
          title: Text('Women'),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.mic,
                color: Colors.white,
              ),
              onPressed: () {
                // do something
              },
            ),
            IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {
                // do something
              },
            ),
          ],
        ),
        body: Column(children: [
          Row(
            children: [
              Column(
                children: [
                  Container(
                      height: 140,
                      width: 180,
                      margin: const EdgeInsets.fromLTRB(7, 10, 7, 0),
                      child: (Image.asset("assets/Rectangle 163.png"))),
                  ElevatedButton(
                    style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all(const Size(150, 2)),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => schemes()));
                    },
                    child: const Text(
                      'Pregant',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                      height: 140,
                      width: 180,
                      margin: const EdgeInsets.fromLTRB(7, 10, 7, 0),
                      child: (Image.asset("assets/Rectangle 161.png"))),
                  ElevatedButton(
                    style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all(const Size(150, 2)),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Old Age',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),

          // second row
          Row(
            children: [
              Column(
                children: [
                  Container(
                      height: 140,
                      width: 180,
                      margin: const EdgeInsets.fromLTRB(7, 10, 7, 0),
                      child: (Image.asset("assets/Rectangle 31.png"))),
                  ElevatedButton(
                    style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all(const Size(150, 2)),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Widows',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                      height: 140,
                      width: 180,
                      margin: const EdgeInsets.fromLTRB(7, 10, 7, 0),
                      child: (Image.asset("assets/img1.jpg"))),
                  ElevatedButton(
                    style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all(const Size(150, 2)),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Working',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ]));
  }
}
