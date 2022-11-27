import 'package:flutter/material.dart';
import 'package:grameen_neeti/profiledetails.dart';
import 'package:grameen_neeti/womenschemes.dart';

void main() {
  runApp(const page1());
}

class page1 extends StatelessWidget {
  const page1({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Schemes',
      home: schemeshome(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class schemeshome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
          title: Text('Schemes'),
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
        body: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(10.0),
              child: Text(
                  "These are the following categories of schemes available"),
            ),
            Column(children: [
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                          height: 140,
                          width: 180,
                          margin: const EdgeInsets.fromLTRB(7, 10, 7, 0),
                          child: (Image.asset("assets/Rectangle 25.png"))),
                      ElevatedButton(
                        style: ButtonStyle(
                          fixedSize:
                              MaterialStateProperty.all(const Size(150, 2)),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => profiledetail()));
                        },
                        child: const Text(
                          'Women',
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
                          child: (Image.asset("assets/farmer.jpg"))),
                      ElevatedButton(
                        style: ButtonStyle(
                          fixedSize:
                              MaterialStateProperty.all(const Size(150, 2)),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Farmers',
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

              //fourth row

              Row(
                children: [
                  Column(
                    children: [
                      Container(
                          height: 140,
                          width: 180,
                          margin: const EdgeInsets.fromLTRB(7, 10, 7, 0),
                          child: (Image.asset("assets/Rectangle 32.png"))),
                      ElevatedButton(
                        style: ButtonStyle(
                          fixedSize:
                              MaterialStateProperty.all(const Size(150, 2)),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Children',
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
                          child: (Image.asset("assets/Rectangle 33.png"))),
                      ElevatedButton(
                        style: ButtonStyle(
                          fixedSize:
                              MaterialStateProperty.all(const Size(150, 2)),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Household',
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

              //third row

              Row(
                children: [
                  Column(
                    children: [
                      Container(
                          height: 140,
                          width: 180,
                          margin: const EdgeInsets.fromLTRB(7, 10, 7, 0),
                          child: (Image.asset("assets/Rectangle 161.png"))),
                      ElevatedButton(
                        style: ButtonStyle(
                          fixedSize:
                              MaterialStateProperty.all(const Size(150, 2)),
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
                  Column(
                    children: [
                      Container(
                          height: 140,
                          width: 180,
                          margin: const EdgeInsets.fromLTRB(7, 10, 7, 0),
                          child: (Image.asset("assets/Rectangle 35.png"))),
                      ElevatedButton(
                        style: ButtonStyle(
                          fixedSize:
                              MaterialStateProperty.all(const Size(150, 2)),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Tribals',
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

              //second row

              Row(
                children: [
                  Column(
                    children: [
                      Container(
                          height: 140,
                          width: 180,
                          margin: const EdgeInsets.fromLTRB(7, 10, 7, 0),
                          child: (Image.asset("assets/Rectangle 34.png"))),
                      ElevatedButton(
                        style: ButtonStyle(
                          fixedSize:
                              MaterialStateProperty.all(const Size(150, 2)),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Factories',
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
                          child: (Image.asset("assets/Rectangle 36.png"))),
                      ElevatedButton(
                        style: ButtonStyle(
                          fixedSize:
                              MaterialStateProperty.all(const Size(150, 2)),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'others',
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
            ])
          ],
        ));
  }
}
