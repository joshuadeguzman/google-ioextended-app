// Copyright 2019 Joshua de Guzman (https://joshuadeguzman.github.io). All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';

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
      appBar: AppBar(
        title: Text(
          'Home',
          style: TextStyle(
            color: Colors.black54,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.lightbulb_outline,
              size: 20,
              color: Colors.black54,
            ),
            onPressed: () {},
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
        child: Stack(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/cover_googleio.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
