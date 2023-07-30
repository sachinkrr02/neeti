import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grameen_neeti/pages/profile/editProfile.dart';
import 'package:grameen_neeti/pages/profile/profileNew.dart';

class editProfile extends StatefulWidget {
  const editProfile({super.key});

  @override
  State<editProfile> createState() => _editProfileState();
}

class _editProfileState extends State<editProfile> {
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
        body: SingleChildScrollView(
          child: Column(
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
                      padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TextButton.icon(
                              onPressed: () {},
                              icon: Icon(Icons.picture_in_picture),
                              label: Text("Change Profile Picture"))
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
                child: Column(
                  children: [
                    Form(
                        child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "Sachin",
                              labelText: "Your Name",
                              labelStyle: TextStyle(
                                fontSize: 15,
                              ),
                              prefixIcon: Icon(Icons.person_2),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 1, color: Colors.grey),
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 1, color: Colors.black),
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                            ),
                            keyboardType: TextInputType.text,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "sachinkr02",
                              labelText: "Your UserName",
                              labelStyle: TextStyle(
                                fontSize: 15,
                              ),
                              prefixIcon: Icon(Icons.verified_user),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 1, color: Colors.grey),
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 1, color: Colors.black),
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                            ),
                            keyboardType: TextInputType.name,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "+91 1234567890",
                              labelText: "Your Phone No.",
                              labelStyle: TextStyle(
                                fontSize: 15,
                              ),
                              prefixIcon: Icon(Icons.phone),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 1, color: Colors.grey),
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 1, color: Colors.black),
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                            ),
                            keyboardType: TextInputType.number,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Name is required';
                              }
                              return null;
                            },
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "student",
                              labelText: "Your Title",
                              labelStyle: TextStyle(
                                fontSize: 15,
                              ),
                              prefixIcon: Icon(Icons.title),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 1, color: Colors.grey),
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 1, color: Colors.black),
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                            ),
                            keyboardType: TextInputType.name,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Name is required';
                              }
                              return null;
                            },
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "Ex. India",
                              labelText: "Your Location",
                              labelStyle: TextStyle(
                                fontSize: 15,
                              ),
                              prefixIcon: Icon(Icons.location_city),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 1, color: Colors.grey),
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 1, color: Colors.black),
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                            ),
                            keyboardType: TextInputType.name,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Name is required';
                              }
                              return null;
                            },
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ProfileNew()));
                          },
                          child: Text("Register"),
                          style: ButtonStyle(
                              minimumSize: MaterialStateProperty.all(
                                const Size(350, 50),
                              ),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(12)))),
                        ),
                      ],
                    ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
