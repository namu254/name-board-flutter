import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FullScreen extends StatelessWidget {
  final String text;
  FullScreen({Key key, @required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays ([]);
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget> [
            Container(child: Image.asset('images/logo.jpg'),),
            Expanded(
              child: Center(
                child: Container(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    text,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                    ),
                  ),
                ),
              ),
            )
          ]
        ),
      )
    );
  }
}
