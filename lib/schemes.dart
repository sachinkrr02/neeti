import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:grameen_neeti/detailed_schemes.dart';
import 'package:grameen_neeti/homepage.dart';

void main() {
  runApp(MaterialApp(
    title: "Hello World",
    home: schemes(),
    debugShowCheckedModeBanner: false,
  ));
}

class schemes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Pregnant',
              style: TextStyle(
                fontSize: 27,
              )),
          leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                size: 28,
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => homepage()));
              }),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.search,
                size: 27,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.mic,
                size: 27,
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: ListView(
          children: [
            Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(8.0, 5.0, 8.0, 5.0),
                  child: const Text(
                      "The following are the matches of schemes according to your profile",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                        fontWeight: FontWeight.w600,
                      )),
                ),
                Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(288.0, 5.0, 5.0, 10.0),
                      child: const Icon(Icons.speaker),
                    ),

                    // schemes details section
                    // scheme 1

                    Container(
                        padding: EdgeInsets.fromLTRB(3.0, 15.0, 3.0, 5.0),
                        width: 375,
                        height: 100,
                        margin: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 20.0),
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.grey,
                              width: 1.0,
                              style: BorderStyle.solid),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white10,
                              blurRadius: 2.0,
                              spreadRadius: 1.0,
                            ) //BoxShadow
                          ],
                        ),
                        child: Column(
                          children: <Widget>[
                            Row(children: <Widget>[
                              Icon(Icons.donut_small),
                              const Text(
                                "Janani Suraksha Yojna - 2005    ",
                                style: TextStyle(
                                  fontSize: 22,
                                ),
                              ),
                              Icon(Icons.arrow_downward_sharp),
                            ]),
                            Row(
                              children: [
                                Container(
                                    padding: EdgeInsets.fromLTRB(
                                        220, 10.0, 5.0, 1.0),
                                    child: const Text(
                                      "Apply Now ",
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.blue),
                                    )),
                                IconButton(
                                    icon: const Icon(
                                      Icons.arrow_forward,
                                      size: 28,
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  detailschemes()));
                                    }),
                              ],
                            )
                          ],
                        )),

                    // scheme 8

                    Container(
                        padding: EdgeInsets.fromLTRB(3.0, 15.0, 3.0, 5.0),
                        width: 375,
                        height: 90,
                        margin: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 20.0),
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.grey,
                              width: 1.0,
                              style: BorderStyle.solid),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white10,
                              blurRadius: 2.0,
                              spreadRadius: 1.0,
                            ) //BoxShadow
                          ],
                        ),
                        child: Column(
                          children: <Widget>[
                            Row(children: <Widget>[
                              Icon(Icons.donut_small),
                              const Text(
                                "Janani Suraksha Yojna - 2005    ",
                                style: TextStyle(
                                  fontSize: 22,
                                ),
                              ),
                              Icon(Icons.arrow_downward_sharp),
                            ]),
                            Row(
                              children: [
                                Container(
                                    padding: EdgeInsets.fromLTRB(
                                        220, 10.0, 5.0, 1.0),
                                    child: const Text(
                                      "Apply Now ",
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.blue),
                                    )),
                                Icon(
                                  Icons.arrow_forward,
                                  color: Colors.blue,
                                  size: 27,
                                ),
                              ],
                            )
                          ],
                        )),

                    // scheme 7

                    Container(
                        padding: EdgeInsets.fromLTRB(3.0, 15.0, 3.0, 5.0),
                        width: 375,
                        height: 90,
                        margin: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 20.0),
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.grey,
                              width: 1.0,
                              style: BorderStyle.solid),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white10,
                              blurRadius: 2.0,
                              spreadRadius: 1.0,
                            ) //BoxShadow
                          ],
                        ),
                        child: Column(
                          children: <Widget>[
                            Row(children: <Widget>[
                              Icon(Icons.donut_small),
                              const Text(
                                "Janani Suraksha Yojna - 2005    ",
                                style: TextStyle(
                                  fontSize: 22,
                                ),
                              ),
                              Icon(Icons.arrow_downward_sharp),
                            ]),
                            Row(
                              children: [
                                Container(
                                    padding: EdgeInsets.fromLTRB(
                                        220, 10.0, 5.0, 1.0),
                                    child: const Text(
                                      "Apply Now ",
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.blue),
                                    )),
                                Icon(
                                  Icons.arrow_forward,
                                  color: Colors.blue,
                                  size: 27,
                                ),
                              ],
                            )
                          ],
                        )),

                    // scheme 6

                    Container(
                        padding: EdgeInsets.fromLTRB(3.0, 15.0, 3.0, 5.0),
                        width: 375,
                        height: 90,
                        margin: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 20.0),
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.grey,
                              width: 1.0,
                              style: BorderStyle.solid),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white10,
                              blurRadius: 2.0,
                              spreadRadius: 1.0,
                            ) //BoxShadow
                          ],
                        ),
                        child: Column(
                          children: <Widget>[
                            Row(children: <Widget>[
                              Icon(Icons.donut_small),
                              const Text(
                                "Janani Suraksha Yojna - 2005    ",
                                style: TextStyle(
                                  fontSize: 22,
                                ),
                              ),
                              Icon(Icons.arrow_downward_sharp),
                            ]),
                            Row(
                              children: [
                                Container(
                                    padding: EdgeInsets.fromLTRB(
                                        220, 10.0, 5.0, 1.0),
                                    child: const Text(
                                      "Apply Now ",
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.blue),
                                    )),
                                Icon(
                                  Icons.arrow_forward,
                                  color: Colors.blue,
                                  size: 27,
                                ),
                              ],
                            )
                          ],
                        )),
                    //scheme 5

                    Container(
                        padding: EdgeInsets.fromLTRB(3.0, 15.0, 3.0, 5.0),
                        width: 375,
                        height: 90,
                        margin: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 20.0),
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.grey,
                              width: 1.0,
                              style: BorderStyle.solid),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white10,
                              blurRadius: 2.0,
                              spreadRadius: 1.0,
                            ) //BoxShadow
                          ],
                        ),
                        child: Column(
                          children: <Widget>[
                            Row(children: <Widget>[
                              Icon(Icons.donut_small),
                              const Text(
                                "Janani Suraksha Yojna - 2005    ",
                                style: TextStyle(
                                  fontSize: 22,
                                ),
                              ),
                              Icon(Icons.arrow_downward_sharp),
                            ]),
                            Row(
                              children: [
                                Container(
                                    padding: EdgeInsets.fromLTRB(
                                        220, 10.0, 5.0, 1.0),
                                    child: const Text(
                                      "Apply Now ",
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.blue),
                                    )),
                                Icon(
                                  Icons.arrow_forward,
                                  color: Colors.blue,
                                  size: 27,
                                ),
                              ],
                            )
                          ],
                        )),

                    //scheme 4

                    Container(
                        padding: EdgeInsets.fromLTRB(3.0, 15.0, 3.0, 5.0),
                        width: 375,
                        height: 90,
                        margin: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 20.0),
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.grey,
                              width: 1.0,
                              style: BorderStyle.solid),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white10,
                              blurRadius: 2.0,
                              spreadRadius: 1.0,
                            ) //BoxShadow
                          ],
                        ),
                        child: Column(
                          children: <Widget>[
                            Row(children: <Widget>[
                              Icon(Icons.donut_small),
                              const Text(
                                "Janani Suraksha Yojna - 2005    ",
                                style: TextStyle(
                                  fontSize: 22,
                                ),
                              ),
                              Icon(Icons.arrow_downward_sharp),
                            ]),
                            Row(
                              children: [
                                Container(
                                    padding: EdgeInsets.fromLTRB(
                                        220, 10.0, 5.0, 1.0),
                                    child: const Text(
                                      "Apply Now ",
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.blue),
                                    )),
                                Icon(
                                  Icons.arrow_forward,
                                  color: Colors.blue,
                                  size: 27,
                                ),
                              ],
                            )
                          ],
                        )),

                    //scheme 3

                    Container(
                        padding: EdgeInsets.fromLTRB(3.0, 15.0, 3.0, 5.0),
                        width: 375,
                        height: 90,
                        margin: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 20.0),
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.grey,
                              width: 1.0,
                              style: BorderStyle.solid),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white10,
                              blurRadius: 2.0,
                              spreadRadius: 1.0,
                            ) //BoxShadow
                          ],
                        ),
                        child: Column(
                          children: <Widget>[
                            Row(children: <Widget>[
                              Icon(Icons.donut_small),
                              const Text(
                                "Janani Suraksha Yojna - 2005    ",
                                style: TextStyle(
                                  fontSize: 22,
                                ),
                              ),
                              Icon(Icons.arrow_downward_sharp),
                            ]),
                            Row(
                              children: [
                                Container(
                                    padding: EdgeInsets.fromLTRB(
                                        220, 10.0, 5.0, 1.0),
                                    child: const Text(
                                      "Apply Now ",
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.blue),
                                    )),
                                Icon(
                                  Icons.arrow_forward,
                                  color: Colors.blue,
                                  size: 27,
                                ),
                              ],
                            )
                          ],
                        )),

                    //schemes 2

                    Container(
                        padding: EdgeInsets.fromLTRB(3.0, 15.0, 3.0, 5.0),
                        width: 375,
                        height: 90,
                        margin: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 20.0),
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.grey,
                              width: 1.0,
                              style: BorderStyle.solid),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white10,
                              blurRadius: 2.0,
                              spreadRadius: 1.0,
                            ) //BoxShadow
                          ],
                        ),
                        child: Column(
                          children: <Widget>[
                            Row(children: <Widget>[
                              Icon(Icons.donut_small),
                              const Text(
                                "Janani Suraksha Yojna - 2005    ",
                                style: TextStyle(
                                  fontSize: 22,
                                ),
                              ),
                              Icon(Icons.arrow_downward_sharp),
                            ]),
                            Row(
                              children: [
                                Container(
                                    padding: EdgeInsets.fromLTRB(
                                        220, 10.0, 5.0, 1.0),
                                    child: const Text(
                                      "Apply Now ",
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.blue),
                                    )),
                                Icon(
                                  Icons.arrow_forward,
                                  color: Colors.blue,
                                  size: 27,
                                ),
                              ],
                            )
                          ],
                        )),
                  ],
                ),
              ],
            ),
          ],
        ));
  }
}
