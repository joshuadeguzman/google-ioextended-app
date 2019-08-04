import 'package:flutter/material.dart';
import 'package:google_ioextended/screens/AgendaScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Google IO Extended 2019 Manila',
      theme: ThemeData(
        fontFamily: 'Manrope',
        primarySwatch: Colors.blue,
      ),
      home: AgendaScreen(),
    );
  }
}