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
                Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 70.0, left: 220.0),
                      child: Text(
                        'Olá',
                        style: GoogleFonts.chelaOne(
                            fontSize: 20.0, color: Color(0xff4b1ca2)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40.0),
                      child: Row(
                        children: [
                          Text(
                            'Ziraldo!',
                            style: GoogleFonts.chelaOne(
                                fontSize: 75.0, color: Color(0xff210457)),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 60.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    'Parabéns! esse mês você fez',
                    style: GoogleFonts.chelaOne(
                        fontSize: 25.0, color: Color(0xff4b1ca2)),
                  ),
                  Icon(
                    Icons.remove_red_eye,
                    color: Color(0xff4f426f),
                    size: 30.0,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
