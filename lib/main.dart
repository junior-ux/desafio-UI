import 'package:flutter/material.dart';

import 'package:desafio_ui/screens/input_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'marker-felt').copyWith(
        primaryColor: Color(0xff210457),
        scaffoldBackgroundColor: Color(0xffe6e6e6),
      ),
      home: MyHomePage(),
    );
  }
}
