// Copyright 2019 Joshua de Guzman (https://joshuadeguzman.github.io). All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:google_ioextended/shared/constants/strings.dart';
import 'package:google_ioextended/shared/custom/app_icons_icons.dart';
import 'package:google_ioextended/widgets/roadshows_view.dart';
import 'package:google_ioextended/widgets/social_view.dart';
import 'package:google_ioextended/widgets/version_view.dart';

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
              final snackBar = SnackBar(content: Text('Yay! You opened a snackbar!'));
              Scaffold.of(context).showSnackBar(snackBar);
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
                      buildDescriptionLabelView(),
                      buildDescriptionView(),
                      buildEventsLabelView(),
                      buildRoadShowsView(context),
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

  Widget buildDescriptionLabelView() {
    return Padding(
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
    );
  }

  Widget buildDescriptionView() {
    return Padding(
      padding: EdgeInsets.only(left: 15, right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Text(
              Strings.description_googleio_extended,
              style: TextStyle(fontSize: 14, color: Colors.black87),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildEventsLabelView() {
    return Padding(
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
    );
  }
}
