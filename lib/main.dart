import 'package:flutter/material.dart';
import 'package:name_board/fullscreen.dart';

void main() {
  runApp(MaterialApp(
    
    title: 'Sign Board',
    home: FirstScreen(),
  ));
}

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  TextEditingController textFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Guest name sign board",
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Color(0xff515148),
                title: Center(child: Text("Guest name sign board"),
                )),
            body: Center(
              child: ListView(
                shrinkWrap: true,
                padding: const EdgeInsets.all(20.0),
                children: <Widget>[
                  TextField(
                      controller: textFieldController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter the guest name ',
                      )),
                  const SizedBox(height: 30),
                  FlatButton(
                    color: Color(0xFFb69e4f),
                    textColor: Colors.white,
                    disabledColor: Colors.grey,
                    disabledTextColor: Colors.black,
                    padding: EdgeInsets.all(20.0),
                    splashColor: Colors.blueAccent,
                    onPressed: () {
                      String textToSend = textFieldController.text;
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FullScreen(
                              text: textToSend,
                            ),
                          ));
                      
                    },
                    child: Text(
                      "Go fullscreen",
                      style: TextStyle(fontSize: 20.0),
                    ),
                  )
                ],
              ),
            )));
  }
}
