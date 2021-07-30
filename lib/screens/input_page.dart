import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:badges/badges.dart';
import 'package:desafio_ui/components/constants.dart';

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
  int _mudabag = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            //avatar e texto 'Olá Ziraldo'
            _AvatarTexto(),
            //texto parabéns
            _TextoParabens(),
            //container de icones
            _ContainerIcones(),
            //container valor de pedidos
            _ContainerValor(),

            Spacer(),

            Padding(
              padding: EdgeInsets.only(
                top: 10.0,
                left: 18.0,
                right: 18.0,
                bottom: 15.0,
              ),
              child: Row(
                children: <Widget>[
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _mudabag = 0;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: _mudabag == 0 ? kCorPrimaria : kCorTercearia,
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 16.0),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.home,
                              color:
                                  _mudabag == 0 ? Colors.white : Colors.white,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Text(
                                _mudabag == 0 ? 'Home' : '',
                                style: GoogleFonts.chelaOne(
                                    fontSize: 16,
                                    color: _mudabag == 0
                                        ? Colors.white
                                        : Colors.teal),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _mudabag = 1;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: _mudabag == 1 ? kCorPrimaria : kCorSecundaria,
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 16.0),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.shop_2,
                              color:
                                  _mudabag == 1 ? Colors.white : Colors.white,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Text(
                                _mudabag == 1 ? 'Pedidos' : '',
                                style: GoogleFonts.chelaOne(
                                    fontSize: 16,
                                    color: _mudabag == 1
                                        ? Colors.white
                                        : Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _mudabag = 2;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: _mudabag == 2 ? kCorPrimaria : kCorSecundaria,
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 16.0),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.people,
                              color:
                                  _mudabag == 2 ? Colors.white : Colors.white,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Text(
                                _mudabag == 2 ? 'Clientes' : '',
                                style: GoogleFonts.chelaOne(
                                    fontSize: 16,
                                    color: _mudabag == 2
                                        ? Colors.white
                                        : Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _mudabag = 3;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: _mudabag == 3 ? kCorPrimaria : kCorSecundaria,
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 16.0),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.trending_up,
                              color:
                                  _mudabag == 3 ? Colors.white : Colors.white,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Text(
                                _mudabag == 3 ? 'Vendas' : '',
                                style: GoogleFonts.chelaOne(
                                    fontSize: 16,
                                    color: _mudabag == 3
                                        ? Colors.white
                                        : Colors.teal),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
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

class _AvatarTexto extends StatelessWidget {
  const _AvatarTexto({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 80.0, left: 30.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              'https://secure.wealthpress.com/sf/long_weekend/pages/of/img/t6.png',
            ),
            radius: 45,
          ),
        ),
        Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 70.0, left: 210.0),
              child: Text(
                'Olá',
                style: GoogleFonts.chelaOne(
                  fontSize: 20.0,
                  color: kCorTercearia,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40.0),
              child: Row(
                children: [
                  Text(
                    'Ziraldo!',
                    style: GoogleFonts.chelaOne(
                        fontSize: 70.0, color: Color(0xff210457)),
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}

class _TextoParabens extends StatelessWidget {
  const _TextoParabens({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 60.0,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 35.0, right: 35.0, bottom: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              'Parabéns! esse mês você fez',
              style: GoogleFonts.chelaOne(
                  fontSize: 20.0, color: Color(0xff4b1ca2)),
            ),
            Icon(
              Icons.remove_red_eye,
              color: Color(0xff4f426f),
              size: 25.0,
            )
          ],
        ),
      ),
    );
  }
}

class _ContainerIcones extends StatelessWidget {
  const _ContainerIcones({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 120,
          width: 350,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            color: Color(0xffd7d3e2),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 10.0,
                offset: Offset(0.0, 6.0),
              ),
            ],
          ),
          //color: Color(0xffd7d3e2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              //icone 1
              Container(
                margin: EdgeInsets.only(left: 8.0, top: 20.0),
                child: Row(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Badge(
                          position: BadgePosition.topEnd(top: -10, end: -18),
                          badgeColor: Color(0xffd7d3e2),
                          badgeContent: Text(
                            '12',
                            style: GoogleFonts.concertOne(
                                color: Color(0xff4b1ca2),
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold),
                          ),
                          child: IconButton(
                              icon: Icon(
                                Icons.shop_2,
                                color: Color(0xff210457),
                                size: 40.0,
                              ),
                              onPressed: () {}),
                        ),
                        Row(
                          children: [
                            Text(
                              'novos\npedidos',
                              style: GoogleFonts.acme(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff4b1ca2),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              //Icone 2
              Container(
                margin: EdgeInsets.only(left: 8.0, top: 20.0),
                child: Row(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Badge(
                          position: BadgePosition.topEnd(top: -10, end: -18),
                          badgeColor: Color(0xffd7d3e2),
                          badgeContent: Text(
                            '20',
                            style: GoogleFonts.concertOne(
                                color: Color(0xff4b1ca2),
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold),
                          ),
                          child: IconButton(
                              icon: Icon(
                                Icons.people,
                                color: Color(0xff210457),
                                size: 40.0,
                              ),
                              onPressed: () {}),
                        ),
                        Row(
                          children: [
                            Text(
                              'novos\nclientes',
                              style: GoogleFonts.acme(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff4b1ca2),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              //Icone 3
              Container(
                margin: EdgeInsets.only(left: 8.0, top: 20.0),
                child: Row(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Badge(
                          position: BadgePosition.topEnd(
                            top: -10,
                            end: -15,
                          ),
                          badgeColor: Color(0xffd7d3e2),
                          badgeContent: Text(
                            '20',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.concertOne(
                                color: Color(0xff4b1ca2),
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold),
                          ),
                          child: IconButton(
                              icon: Icon(
                                Icons.location_city,
                                color: Color(0xff210457),
                                size: 40.0,
                              ),
                              onPressed: () {}),
                        ),
                        Row(
                          children: [
                            Text(
                              'novos\nclientes',
                              style: GoogleFonts.acme(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff4b1ca2),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _ContainerValor extends StatelessWidget {
  const _ContainerValor({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 30.0, top: 10.0, right: 30.0),
      height: 120,
      width: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        color: Color(0xffd7d3e2),
        boxShadow: [
          BoxShadow(
              color: Colors.grey, blurRadius: 10.0, offset: Offset(0.0, 6.0)),
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
                style: GoogleFonts.concertOne(
                  fontSize: 35.0,
                  color: Color(0xff4b1ca2),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: Text(
                  'em novos pedidos',
                  style: GoogleFonts.acme(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff210457),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
