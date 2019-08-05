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
  bool _isMaterialDesign = true;

  // Components
  double _sliderValue = 0.0;
  bool _isSwitchToggled = false;

  @override
  Widget build(BuildContext context) {
    return _isMaterialDesign ? buildMaterialWidgets() : buildCupertinoWidgets();
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
                    child: RaisedButton(
                      onPressed: () {},
                      color: Colors.blue,
                      textColor: Colors.white,
                      child: Text('Android ♥ Flutter', style: TextStyle(fontSize: 20)),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 50)),
                Center(
                  child: SizedBox(
                    height: 70,
                    width: 200,
                    child: Slider(
                      onChanged: (double value) {
                        setState(() {
                          _sliderValue = value;
                        });
                      },
                      value: _sliderValue,
                      min: 0.0,
                      max: 100.0,
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 30)),
                Center(
                  child: Switch(
                    value: _isSwitchToggled,
                    onChanged: (bool value) {
                      setState(() {
                        _isSwitchToggled = value;
                      });
                    },
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            RaisedButton(
              onPressed: () {
                setState(
                  () {
                    _isMaterialDesign = !_isMaterialDesign;
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
      backgroundColor: Colors.white,
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
                    child: CupertinoButton(
                      onPressed: () {},
                      color: Colors.blue,
                      child:
                          Text('iOS ♥ Flutter', style: TextStyle(fontSize: 20)),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 50)),
                Center(
                  child: SizedBox(
                    height: 70,
                    width: 200,
                    child: CupertinoSlider(
                      onChanged: (double value) {
                        setState(() {
                          _sliderValue = value;
                        });
                      },
                      value: _sliderValue,
                      min: 0.0,
                      max: 100.0,
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 30)),
                Center(
                  child: CupertinoSwitch(
                    value: _isSwitchToggled,
                    onChanged: (bool value) {
                      setState(() {
                        _isSwitchToggled = value;
                      });
                    },
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            CupertinoButton(
              onPressed: () {
                setState(
                  () {
                    _isMaterialDesign = !_isMaterialDesign;
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
