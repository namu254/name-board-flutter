import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FullScreen extends StatelessWidget {
  final String text;
  FullScreen({Key key, @required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays ([]);
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: Center(
        child: Column(
          children: <Widget> [
            Container(
              height: 100,
              child: Image.asset('images/full_logo.jpg'),),
            Expanded(
              child: Center(
                child: Container(
                  padding: EdgeInsets.all(18),
                  child: AutoSizeText(
                    text,
                    maxLines: 1,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 100,
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
