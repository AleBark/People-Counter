import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "People Counter",
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _people = 0;
  String _infoText = 'Vacancies';

  void _changeCounter(int delta) {
    setState(() {
      _people += delta;
      if (_people < 0) {
        _infoText = "How is this possible?";
      } else if (_people == 0) {
        _infoText = "Vacancies";
      } else {
        _infoText = "The more, the merrier!";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset("images/reception.png",
            fit: BoxFit.fitHeight, height: 1000.0),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              Padding(
                  padding: EdgeInsets.fromLTRB(0, 45, 0, 295),
                  child: Text(
                    "Guests: $_people",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  )),
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(5, 5, 5, 38),
                  child: FlatButton(
                    child: Text(
                      "Add someone",
                      style: TextStyle(fontSize: 18.0, color: Colors.black),
                    ),
                    onPressed: () {
                      _changeCounter(1);
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(5, 5, 5, 38),
                  child: FlatButton(
                    child: Text(
                      "Remove someone",
                      style: TextStyle(fontSize: 18.0, color: Colors.black),
                    ),
                    onPressed: () {
                      _changeCounter(-1);
                    },
                  ),
                ),
              ],
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 80),
                child: Text(
                  "Flutter Hotel",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: 30.0,
                  ),
                )),
            Text(
              _infoText,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal,
                fontSize: 20.0,
              ),
            )
          ],
        )
      ],
    );
  }
}
