// Copyright 2019 Joshua de Guzman (https://joshuadeguzman.github.io). All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:google_ioextended/shared/constants/strings.dart';
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
  double _padValue = 0;

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
              Icons.image,
              size: 20,
              color: Colors.black54,
            ),
            onPressed: () {
              setState(() {
                if (_padValue == 30) {
                  _padValue = 0;
                } else {
                  _padValue = 30;
                }
              });
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
                          AnimatedPadding(
                            curve: Curves.easeInOut,
                            child: Container(
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
                            padding: EdgeInsets.all(_padValue),
                            duration: const Duration(seconds: 1),
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
                      _buildDescriptionLabelView(),
                      _buildDescriptionView(),
                      _buildEventsLabelView(),
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

  void showSnackbar(String message) {
    final snackBar = SnackBar(content: Text(message));
    Scaffold.of(context).showSnackBar(snackBar);
  }

  Widget _buildDescriptionLabelView() {
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

  Widget _buildDescriptionView() {
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

  Widget _buildEventsLabelView() {
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
