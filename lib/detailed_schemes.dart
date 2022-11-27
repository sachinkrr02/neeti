import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:grameen_neeti/schemes.dart';
import 'package:flutter_tts/flutter_tts.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    title: "Hello World",
    home: detailschemes(),
  ));
}

class detailschemes extends StatelessWidget {
  detailschemes({Key? key}) : super(key: key);
  final FlutterTts flutterTts = FlutterTts();

  @override
  Widget build(BuildContext context) {
    Future _speak() async {
      await flutterTts.speak(
          "जननी सुरक्षा योजना(अंग्रेज़ी: Janani Suraksha Yojana) भारत सरकार के स्वास्थ्य और परिवार कल्याण मंत्रालय द्वारा प्रायोजित योजना है जिसका प्रारंभ 2005 में किया गया। इसके अंतर्गत गरीबी रेखा से नीचे जीवनयापन करने वाली महिलाओं को संस्थागत प्रसूति कराने के लिए एक हजार रुपये की आर्थिक सहायता प्रदान की जाती है।");
      await flutterTts.setLanguage("hi-IN");
      print(await flutterTts.getVoices);
      //await flutterTts.setPitch(1);
    }

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
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => schemes()));
            }),
        actions: <Widget>[
          IconButton(
            padding: EdgeInsets.fromLTRB(0.0, 5.0, 72.0, 2.0),
            icon: Icon(
              Icons.female,
              size: 35,
            ),
            onPressed: () {},
          ),
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
      body: Column(
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
                  padding: EdgeInsets.fromLTRB(3.0, 5.0, 3.0, 0.0),
                  width: 380,
                  height: 250,
                  margin: EdgeInsets.fromLTRB(5.0, 25.0, 5.0, 5.0),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                      width: 3.0,
                      style: BorderStyle.solid,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white10,
                        blurRadius: 2.0,
                        spreadRadius: 1.0,
                      ),
                      //BoxShadow
                    ],
                  ),
                  child: Column(
                    children: <Widget>[
                      Row(children: <Widget>[
                        Icon(Icons.donut_small),
                        const Text(
                          "Janani Suraksha Yojna - 2005    ",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        IconButton(
                          icon: const Icon(
                            Icons.speaker,
                            size: 28,
                          ),
                          onPressed: () => _speak(),
                        ),
                      ]),
                      Container(
                        padding: EdgeInsets.fromLTRB(5.0, 12.0, 5.0, 5.0),
                        child: const Text(
                          "It is a safe motherhood scheme under the National Health Mission. It aims to reduce maternak and neonatal mortality by supporting institutional delivery fo poor pregnant women. The main focus is on rhe Low Performing States.",
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Row(
                            children: [
                              Container(
                                  padding:
                                      EdgeInsets.fromLTRB(20, 10.0, 0.0, 1.0),
                                  child: const Text(
                                    "Read More ",
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.blue),
                                  )),
                              IconButton(
                                  icon: const Icon(
                                    Icons.arrow_downward_rounded,
                                    size: 27,
                                    color: Colors.blue,
                                  ),
                                  onPressed: () {
                                    print("clicked once");
                                  }),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                  padding:
                                      EdgeInsets.fromLTRB(60, 10.0, 0.0, 1.0),
                                  child: const Text(
                                    "Apply Now ",
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.blue),
                                  )),
                              IconButton(
                                  icon: const Icon(
                                    Icons.arrow_forward,
                                    size: 27,
                                    color: Colors.blue,
                                  ),
                                  onPressed: () {
                                    print("clicked once");
                                  }),
                            ],
                          )
                        ],
                      ),
                    ],
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
