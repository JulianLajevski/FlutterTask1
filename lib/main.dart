import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool buttonW = false;
  bool buttonG = false;
  bool buttonB = false;
  bool buttonR = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
                child: Center(
                  child: Wrap(
                    spacing: 100,
                    runSpacing: 20,
                    children: <Widget>[
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              if(buttonW){
                                buttonW = false;
                              }else{
                                buttonW = true;
                              }
                            });
                          },
                          child: Text("White")),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              if(buttonG){
                                buttonG = false;
                              }else {
                                buttonG = true;
                              }
                            });
                          },
                          child: Text("Green")),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              if(buttonB){
                                buttonB = false;
                              }else {
                                buttonB = true;
                              }
                            });
                          },
                          child: Text("Blue")),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              if(buttonR){
                                buttonR = false;
                              }else {
                                buttonR = true;
                              }
                            });
                          },
                          child: Text("Red")),
                    ],
                  ),
                )
            ),
            Expanded(
                child: Container(
                  color: Colors.blueGrey,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Text color",
                            style: TextStyle(
                              color: buttonW ? Colors.white : Colors.black,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            "Text color",
                            style: TextStyle(
                              color: buttonG ? Colors.greenAccent : Colors.black,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            "Text color",
                            style: TextStyle(
                              color: buttonB ? Colors.lightBlueAccent : Colors.black,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            "Text color",
                            style: TextStyle(
                              color: buttonR ? Colors.red : Colors.black,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    )
                ),
            ),
          ],
        ),
      ),
    );
  }
}
