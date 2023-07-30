import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:grameen_neeti/pages/homepage.dart';
import 'package:grameen_neeti/pages/login.dart';
import 'package:grameen_neeti/pages/profile/profiledetails.dart';
import 'package:grameen_neeti/signup.dart';
import 'package:grameen_neeti/splashScreen.dart';
import 'package:grameen_neeti/startPage.dart';

void main() {
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Login',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: SplashScreen());
  }
}

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color.fromRGBO(220, 100, 150, 0.5),
//       body: Center(
//         child: Container(
//           alignment: Alignment.center,
//           child: Column(children: <Widget>[
//             Padding(
//               padding: EdgeInsets.fromLTRB(50, 290, 50, 20),
//               child: ClipRRect(
//                 borderRadius: BorderRadius.circular(30.0),
//                 child: Image.asset("assets/logo.jpeg"),
//               ),
//             ),
//             ElevatedButton(
//               style: ButtonStyle(
//                 fixedSize: MaterialStateProperty.all(const Size(270, 2)),
//                 shape: MaterialStateProperty.all(
//                   RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(30),
//                   ),
//                 ),
//               ),
//               onPressed: () {
//                 Navigator.push(
//                     context, MaterialPageRoute(builder: (context) => Signup()));
//               },
//               child: const Text(
//                 'Lets Go',
//                 style: TextStyle(
//                     fontSize: 22,
//                     fontWeight: FontWeight.w500,
//                     color: Colors.white),
//               ),
//             ),
//           ]),
//         ),
//       ),
//     );
//   }
// }
