import 'package:flutter/material.dart';
import 'package:grameen_neeti/pages/loginSignup.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Image.asset(
              "assets/bgimg1.png",
              fit: BoxFit.fill,
            ),
            SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Sign up",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Expanded(
                  child: TextField(
                decoration: InputDecoration(
                  hintText: "Email ID",
                  prefixIconColor: Colors.grey,
                  prefixIcon: Icon(Icons.email_rounded),
                ),
              )),
            ),
            Container(
              child: Expanded(
                  child: TextField(
                decoration: InputDecoration(
                  hintText: "Full Name",
                  prefixIconColor: const Color.fromARGB(255, 220, 177, 177),
                  prefixIcon: Icon(Icons.person),
                ),
              )),
            ),
            Container(
              child: Expanded(
                  child: TextField(
                decoration: InputDecoration(
                  hintText: "Mobile No.",
                  prefixIconColor: Colors.grey,
                  prefixIcon: Icon(Icons.phone_android),
                ),
              )),
            ),
            Container(
              child: Expanded(
                  child: TextField(
                decoration: InputDecoration(
                  hintText: "password",
                  prefixIconColor: Colors.grey,
                  prefixIcon: Icon(Icons.password),
                ),
              )),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Column(
                children: [
                  Text(
                    "By siging up, you agree to our ",
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                  Text(
                    "Terms & Conditions and Privacy Policy",
                    style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 17,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => loginSignup()));
              },
              child: Text("Register"),
              style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(
                    const Size(350, 50),
                  ),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)))),
            ),
            SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.center,
              child: Row(
                children: [
                  Text(
                    "Joined us before?",
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => loginSignup()));
                      },
                      child: Text(
                        "  Login",
                        style: TextStyle(
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
