import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({
    Key? key,
  }) : super(
          key: key,
        );

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
          children: <Widget>[
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
                    size: 25.0,
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30.0, top: 10.0, right: 30.0),
              //color: Color(0xffd7d3e2),
              height: 120,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                color: Color(0xffd7d3e2),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey,
                      blurRadius: 10.0,
                      offset: Offset(0.0, 6.0)),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.shop_2,
                      color: Color(0xff210457),
                      size: 45.0,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.people_alt,
                      color: Color(0xff210457),
                      size: 45.0,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.location_city,
                      color: Color(0xff210457),
                      size: 45.0,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30.0, top: 10.0, right: 30.0),
              //color: Color(0xffd7d3e2),
              height: 120,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                color: Color(0xffd7d3e2),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey,
                      blurRadius: 10.0,
                      offset: Offset(0.0, 6.0)),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0, left: 6.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.shop_2,
                            color: Color(0xff210457),
                            size: 45.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        'R\$ 34.000,00',
                        style: GoogleFonts.acme(
                          fontSize: 35.0,
                          color: Color(0xff4b1ca2),
                        ),
                      ),
                      Text(
                        'em novos pedidos',
                        style: GoogleFonts.acme(
                            fontSize: 20.0, color: Color(0xff210457)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              right: 30,
              bottom: 30,
              child: Stack(
                alignment: Alignment.bottomRight,
                children: <Widget>[
                  Icon(
                    Icons.add,
                    color: Color(0xff210457),
                    size: 45.0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
