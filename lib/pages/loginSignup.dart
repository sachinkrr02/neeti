import 'package:flutter/material.dart';
import 'package:grameen_neeti/pages/homepage.dart';
import 'package:grameen_neeti/pages/login.dart';
import 'package:grameen_neeti/signup.dart';

class loginSignup extends StatefulWidget {
  const loginSignup({super.key});

  @override
  State<loginSignup> createState() => _loginSignupState();
}

class _loginSignupState extends State<loginSignup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(
              height: 60,
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
                "Login",
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
                    hintText: "Password",
                    prefixIconColor: Colors.grey,
                    prefixIcon: Icon(Icons.password_sharp),
                    suffixIcon: Icon(Icons.remove_red_eye_rounded)),
              )),
            ),
            SizedBox(
              height: 20,
            ),
            Align(
                alignment: Alignment.centerRight,
                child: const Expanded(
                    child: Text(
                  "Forgot Password?",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ))),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => homepage()));
              },
              child: Text("Login"),
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
              child: Text(
                "OR",
                style: TextStyle(fontSize: 20, color: Colors.grey),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(
                Icons.save,
                color: Colors.black,
              ),
              label: Text(
                "Login With Google",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white70,
                minimumSize: Size(350, 50),
                textStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontStyle: FontStyle.normal),
                shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.center,
              child: Row(
                children: [
                  Text(
                    "New To Neeti?",
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Signup()));
                      },
                      child: Text(
                        "  Register",
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
