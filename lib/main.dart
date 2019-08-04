import 'package:flutter/material.dart';
import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:google_ioextended/screens/HomeScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return DynamicTheme(
      defaultBrightness: Brightness.dark,
      data: (brightness) => ThemeData(
        primarySwatch: Colors.blue,
        brightness: brightness,
        appBarTheme: AppBarTheme(
          elevation: 0,
        ),
        fontFamily: 'Manrope',
      ),
      themedWidgetBuilder: (context, theme) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Google I/O Extended',
          theme: theme,
          home: HomeScreen(),
        );
      },
    );
  }
}
