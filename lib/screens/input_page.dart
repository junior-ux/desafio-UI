import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 80.0, left: 30.0),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://secure.wealthpress.com/sf/long_weekend/pages/of/img/t6.png'),
                    radius: 50,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
