// Copyright 2019 Joshua de Guzman (https://joshuadeguzman.github.io). All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:google_ioextended/screens/demo/components_screen.dart';

Widget buildRoadShowsView(BuildContext context) {
  return Container(
    height: 150,
    padding: EdgeInsets.only(left: 15, right: 15),
    margin: EdgeInsets.only(bottom: 20),
    child: ListView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        buildRoadShowView(
          context,
          Colors.blue,
          Colors.blueAccent,
          Colors.white54,
          "Live Viewing Party",
          "Google PH, BGC",
        ),
        Padding(padding: EdgeInsets.only(right: 10)),
        buildRoadShowView(
          context,
          Colors.red,
          Colors.redAccent,
          Colors.white54,
          "Manila",
          "Globe Tower, BGC",
        ),
        Padding(padding: EdgeInsets.only(right: 10)),
        buildRoadShowView(
          context,
          Colors.orange,
          Colors.orangeAccent,
          Colors.white54,
          "Pampanga",
          "TBA",
        )
      ],
    ),
  );
}

Widget buildRoadShowView(
  BuildContext context,
  Color color,
  Color colorAccent,
  Color textColor,
  String event,
  String location,
) {
  return Container(
    height: 200,
    width: 250,
    padding: EdgeInsets.only(top: 5, right: 10, bottom: 5, left: 10),
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: Text(
                'I/O Extended',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        Padding(padding: EdgeInsets.only(bottom: 10)),
        Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    event,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      height: 0.75,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    location,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      height: 0.75,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        Padding(padding: EdgeInsets.only(bottom: 10)),
        FlatButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ComponentsScreen()));
          },
          child: Text('Register', style: TextStyle(color: textColor)),
          color: colorAccent,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        )
      ],
    ),
  );
}
