// Copyright 2019 Joshua de Guzman (https://joshuadeguzman.github.io). All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';

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
