// Copyright 2019 Joshua de Guzman (https://joshuadeguzman.github.io). All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:google_ioextended/shared/custom/app_icons_icons.dart';

Widget buildSocialMediaView() {
    return Container(
      height: 50,
      padding: EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          InkWell(
            onTap: () {},
            child: Icon(
              AppIcons.chrome,
              size: 20,
              color: Colors.black54,
            ),
          ),
          Padding(padding: EdgeInsets.only(right: 15)),
          InkWell(
            onTap: () {},
            child: Icon(
              AppIcons.facebook,
              size: 20,
              color: Colors.black54,
            ),
          ),
          Padding(padding: EdgeInsets.only(right: 15)),
          InkWell(
            onTap: () {},
            child: Icon(
              AppIcons.twitter,
              size: 25,
              color: Colors.black54,
            ),
          ),
          Padding(padding: EdgeInsets.only(right: 15)),
          InkWell(
            onTap: () {},
            child: Icon(
              AppIcons.instagram,
              size: 25,
              color: Colors.black54,
            ),
          ),
          Padding(padding: EdgeInsets.only(right: 15)),
          InkWell(
            onTap: () {},
            child: Icon(
              AppIcons.meetup,
              size: 25,
              color: Colors.black54,
            ),
          ),
        ],
      ),
    );
  }