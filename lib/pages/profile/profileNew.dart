import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grameen_neeti/pages/profile/editProfile.dart';

class ProfileNew extends StatefulWidget {
  const ProfileNew({super.key});

  @override
  State<ProfileNew> createState() => _ProfileNewState();
}

class _ProfileNewState extends State<ProfileNew> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.arrow_back_rounded,
            color: Colors.black,
          ),
          title: Align(
              alignment: Alignment.center,
              child: Text(
                "My Profile",
                style: TextStyle(color: Colors.black),
              )),
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(15),
              child: Row(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: CircleAvatar(
                      radius: 40, // Image radius
                      backgroundImage: AssetImage('assets/farmer.jpg'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(15, 12, 0, 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Sachin Kumar",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        TextButton.icon(
                            onPressed: () {
                               Navigator.push(context,
                            MaterialPageRoute(builder: (context) => editProfile()));
                            },
                            icon: Icon(Icons.add),
                            label: Text("Edit Profile"))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
                alignment: Alignment.center,
                height: 45,
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 244, 239, 239),
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                child: Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Personal Info",
                        style: TextStyle(fontSize: 17),
                      ),
                      style: ButtonStyle(
                          minimumSize: MaterialStateProperty.all(
                            const Size(352, 50),
                          ),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)))),
                    ),
                  ],
                )),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(35, 0, 35, 0),
              child: Row(
                children: [
                  Container(
                    child: Icon(
                      Icons.person,
                      size: 30,
                      color: Colors.grey,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Column(
                      children: [
                        Text(
                          "Username",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          "sachinkrr",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              height: 20,
              thickness: 2,
              indent: 80,
              endIndent: 30,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(35, 0, 35, 0),
              child: Row(
                children: [
                  Container(
                    child: Icon(
                      Icons.email,
                      size: 30,
                      color: Colors.grey,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Column(
                      children: [
                        Text(
                          "Email",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          "sachin02@gmail.com",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              height: 20,
              thickness: 2,
              indent: 80,
              endIndent: 30,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(35, 0, 35, 0),
              child: Row(
                children: [
                  Container(
                    child: Icon(
                      Icons.phone,
                      size: 30,
                      color: Colors.grey,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Column(
                      children: [
                        Text(
                          "Phone No.",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          "+911234567890",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              height: 20,
              thickness: 2,
              indent: 80,
              endIndent: 30,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(35, 0, 35, 0),
              child: Row(
                children: [
                  Container(
                    child: Icon(
                      Icons.title,
                      size: 30,
                      color: Colors.grey,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Column(
                      children: [
                        Text(
                          "Job Title",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          "Student",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              height: 20,
              thickness: 2,
              indent: 80,
              endIndent: 30,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(35, 0, 35, 0),
              child: Row(
                children: [
                  Container(
                    child: Icon(
                      Icons.location_city,
                      size: 30,
                      color: Colors.grey,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Column(
                      children: [
                        Text(
                          "Location",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          "Ghaziabad",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              height: 20,
              thickness: 2,
              indent: 80,
              endIndent: 30,
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
