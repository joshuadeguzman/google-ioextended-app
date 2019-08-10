// Copyright 2019 Joshua de Guzman (https://joshuadeguzman.github.io). All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.


import 'package:flutter/material.dart';
import 'package:google_ioextended/screens/home/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      title: 'Google I/O Extended',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          elevation: 0,
        ),
        fontFamily: 'Manrope',
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
