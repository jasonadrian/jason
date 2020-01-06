import 'package:flutter/material.dart';
import 'package:culinaryguidebali/content/donasi.dart';


class Detailjm2 extends StatelessWidget {

static const String routeName = '/Detailjm2';
@override
  Widget build(BuildContext context) {

    Widget imageSection = Container(
      child: Image.asset('assets/images/jm2.jpg'),
    );

    Widget titleSection = Container(
      padding: EdgeInsets.only(top: 16),
      child: Text(
        'Fat Chow Temple Hill',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
    ); 

Widget textSection = Container(
      padding: EdgeInsets.only(top: 10),
      child: Text(
        'Alamat: Jl. Raya Uluwatu No.8D, Jimbaran, Badung, Bali',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.blue,
          fontWeight: FontWeight.bold,
          fontSize: 12,
        ),
      ),
    ); 
    
    Widget descriptionSection = Container(
      padding: EdgeInsets.all(16),
      child: Text(
          'Hidangan populer Vietnam, Thailand, China dan Asia lainnya bisa disantap di kawasan Jimbaran. Mulai dari tom yam goong, beef curry, bahn mi, Hainanese chicken rice dan lainnya. Tersedia juga menu favorit seperti Tokyo Prawn, Mamas Chicken Noodle dan Fat Chows Fried Rice.',
          textAlign: TextAlign.justify,
        )
    );

    Widget rateSection = Row(
      children: <Widget>[
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star),
      ],
    );

    Widget reviewSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        rateSection,
        Text('Our Score'),
      ],
    );

    Widget menuSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _buildMenuSection(
          Icons.timer,
          "Open", 
          "12.00"
          ),
          _buildMenuSection(
          Icons.timer_off,
          "Closed", 
          "23.00"
          ),
          _buildMenuSection(
          Icons.fastfood,
          "Open for", 
          "lnch,dinner"
          ),
      ],
    ); 

    return MaterialApp(
      title: 'Material Apps',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orangeAccent,
          leading: Icon(Icons.arrow_back_ios, color: Colors.black),
          title: Text(
            'Culinary Guide - Bali',
            style: TextStyle(color: Colors.black),
          ),

        ),
        body: ListView(
          children: [
            imageSection,
            titleSection,
            textSection,
            descriptionSection,
            Container(
              padding: EdgeInsets.only(bottom: 24),
              child: reviewSection,
            ),
            menuSection,
          ],
        ),
      ),
    );
  }
}

Widget _buildTextSection(
  String text, 
  double textSize,
  double paddingTop,
) {
  return Container(
    padding: EdgeInsets.only(top: paddingTop),
    child: Text(
      text,
      style: TextStyle(
        fontSize: textSize,
      ),
    ),
  );
}

Widget _buildMenuSection(
  IconData iconData,
  String title,
  String timestamp,
) {

  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(iconData),
      _buildTextSection(title, 16, 8),
      _buildTextSection(timestamp, 12, 12),
    ],
  );
}
