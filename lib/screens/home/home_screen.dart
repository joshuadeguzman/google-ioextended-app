// Copyright 2019 Joshua de Guzman (https://joshuadeguzman.github.io). All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_ioextended/shared/constants/strings.dart';
import 'package:google_ioextended/shared/custom/app_icons_icons.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Google I/O Extended',
          style: TextStyle(
            color: Colors.black54,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              AppIcons.lightbulb,
              size: 20,
              color: Colors.black54,
            ),
            onPressed: () {
              DynamicTheme.of(context).setBrightness(
                  Theme.of(context).brightness == Brightness.dark
                      ? Brightness.light
                      : Brightness.dark);
            },
          ),
          IconButton(
            icon: Icon(
              Icons.share,
              size: 20,
              color: Colors.black54,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: <Widget>[
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(top: 15)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Google I/O Extended 2019 Manila',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.black87),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Hosted by GDG Philippines',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                color: Colors.black54),
                          ),
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(top: 15)),
                      Stack(
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 230,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    'assets/images/googleio_attendees.png'),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 20,
                            bottom: 20,
                            child: Text(
                              "Bringing you the I/O Experience,\none city at a time",
                              style: TextStyle(
                                height: 0.8,
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20, left: 15, right: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Expanded(
                              child: Text(
                                "Welcome!",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15, right: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Expanded(
                              child: Text(
                                Strings.description_googleio_extended,
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black87),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 15, left: 15, right: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Expanded(
                              child: Text(
                                "Events",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                      buildRoadShowsView(),
                      buildSocialMediaView(),
                      buildVersionView()
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildRoadShowsView() {
    return Container(
      height: 150,
      padding: EdgeInsets.only(left: 15, right: 15),
      margin: EdgeInsets.only(bottom: 20),
      child: ListView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          buildRoadShowView(Colors.blue, Colors.blueAccent, Colors.white54,
              "Live Viewing Party", "Google PH, BGC"),
          Padding(padding: EdgeInsets.only(right: 10)),
          buildRoadShowView(Colors.red, Colors.redAccent, Colors.white54,
              "Manila", "Globe Tower, BGC"),
          Padding(padding: EdgeInsets.only(right: 10)),
          buildRoadShowView(Colors.orange, Colors.orangeAccent, Colors.white54,
              "Pampanga", "TBA")
        ],
      ),
    );
  }

  Widget buildRoadShowView(Color color, Color colorAccent, Color textColor,
      String event, String location) {
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
              Container(
                height: 30,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        event,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 20,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        location,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(padding: EdgeInsets.only(bottom: 10)),
          FlatButton(
            onPressed: () {},
            child: Text('Register', style: TextStyle(color: textColor)),
            color: colorAccent,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          )
        ],
      ),
    );
  }

  Widget buildSocialMediaView() {
    return Container(
      height: 50,
      padding: EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.share,
            size: 25,
            color: Colors.black54,
          ),
          Padding(padding: EdgeInsets.only(right: 15)),
          Icon(
            Icons.share,
            size: 25,
            color: Colors.black54,
          ),
          Padding(padding: EdgeInsets.only(right: 15)),
          Icon(
            Icons.share,
            size: 25,
            color: Colors.black54,
          ),
          Padding(padding: EdgeInsets.only(right: 15)),
          Icon(
            Icons.share,
            size: 25,
            color: Colors.black54,
          ),
          Padding(padding: EdgeInsets.only(right: 15)),
          Icon(
            Icons.share,
            size: 25,
            color: Colors.black54,
          ),
        ],
      ),
    );
  }

  Widget buildVersionView() {
    return Container(
      height: 50,
      padding: EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Text(
              'Version 1.0.0',
              style: TextStyle(fontSize: 10, color: Colors.black54),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
