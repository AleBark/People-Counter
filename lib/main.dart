import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: "People Counter",
      home: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Counter: 0",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text(
                  "Add someone",
                  style: TextStyle(fontSize: 15.0, color: Colors.white),
                ),
                onPressed: () {},
              ),FlatButton(
                child: Text(
                  "Remove someone",
                  style: TextStyle(fontSize: 15.0, color: Colors.white),
                ),
                onPressed: () {},
              ),
            ],
          ),
          Text(
            "Flutter Hotel",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              fontSize: 25.0,
            ),
          )
        ],
      )));
}
