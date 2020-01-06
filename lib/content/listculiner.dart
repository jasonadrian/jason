import 'package:culinaryguidebali/list/listkuta.dart';
import 'package:flutter/material.dart';


    class Listculiner extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(title: Text('Humanity',
            style: TextStyle(
              fontSize: 20,
              color: Colors.greenAccent
            ),),
         ),
            body: BodyLayout(),
        );
      }
    }

    class BodyLayout extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
        return _myListView(context);
      }
    }

 Widget _myListView(BuildContext context) {
      return ListView(
        children: <Widget>[
          ListTile(
          leading: CircleAvatar(backgroundImage: AssetImage('assets/images/kuta.jpg'),
          ),
            title: Text('Uang'),
             trailing: Icon(Icons.keyboard_arrow_right),
             onTap: () {
               Navigator.pushNamed(context, ListKuta.routeName);
             },
          ),
          

        ],
      );
    }



