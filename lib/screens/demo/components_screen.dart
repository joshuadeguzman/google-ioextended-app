// Copyright 2019 Joshua de Guzman (https://joshuadeguzman.github.io). All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ComponentsScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ComponentsScreenState();
  }
}

class ComponentsScreenState extends State<ComponentsScreen> {
  bool isMaterialDesign = true;

  @override
  Widget build(BuildContext context) {
    return this.isMaterialDesign
        ? buildMaterialWidgets()
        : buildCupertinoWidgets();
  }

  Widget buildMaterialWidgets() {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Stack(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: SizedBox(
                    height: 70,
                    width: 200,
                    child: RaisedButton(
                      onPressed: () {},
                      color: Colors.blue,
                      textColor: Colors.white,
                      child: Text('Android', style: TextStyle(fontSize: 20)),
                    ),
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            RaisedButton(
              onPressed: () {
                setState(
                  () {
                    this.isMaterialDesign = !this.isMaterialDesign;
                  },
                );
              },
              child: Text('Change theme'),
            )
          ],
        ),
      ),
    );
  }

  Widget buildCupertinoWidgets() {
    return CupertinoPageScaffold(
      child: Align(
        alignment: Alignment.center,
        child: Stack(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: SizedBox(
                    height: 70,
                    width: 200,
                    child: CupertinoButton(
                      onPressed: () {},
                      color: Colors.blue,
                      child: Text('iOS', style: TextStyle(fontSize: 20)),
                    ),
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            CupertinoButton(
              onPressed: () {
                setState(
                  () {
                    this.isMaterialDesign = !this.isMaterialDesign;
                  },
                );
              },
              child: Text('Change theme'),
            )
          ],
        ),
      ),
    );
  }
}
