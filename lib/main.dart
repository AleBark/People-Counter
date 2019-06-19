import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "People Counter",
    home: Stack(
      children: <Widget>[
        Image.asset("images/reception.png", fit: BoxFit.fitHeight, height: 1000.0),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              Padding(
                  padding: EdgeInsets.fromLTRB(0, 45, 0, 295),
                  child: Text(
                    "Counter: 0",
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
                    onPressed: () {},
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(5, 5, 5, 38),
                  child: FlatButton(
                    child: Text(
                      "Remove someone",
                      style: TextStyle(fontSize: 18.0, color: Colors.black),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            Text(
              "Flutter Hotel",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontSize: 30.0,
              ),
            )
          ],
        )
      ],
    ),
  ));
}
