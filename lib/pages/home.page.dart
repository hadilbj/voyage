import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../menu/drawer.widget.dart';

class HomePage extends StatelessWidget {
  late SharedPreferences prefs;
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(title: const Text('Page Home')),
      body:  Center(
        child: Wrap(
          children: [
            InkWell(
              child: Ink.image(
                  height: 180,
                  width: 160,
                  image: AssetImage('images/meteo.png'),),
              onTap: (){
                Navigator.pop(context);
                Navigator.pushNamed(context, '/meteo');
              },
            ),
            InkWell(
              child: Ink.image(
                height: 180,
                width: 160,
                image: AssetImage('images/galerie.png'),),
              onTap: (){
                Navigator.pop(context);
                Navigator.pushNamed(context, '/gallerie');
              },
            ),
            InkWell(
              child: Ink.image(
                height: 180,
                width: 160,
                image: AssetImage('images/pays.png'),),
              onTap: (){
                Navigator.pop(context);
                Navigator.pushNamed(context, '/pays');
              },
            ),
            InkWell(
              child: Ink.image(
                height: 180,
                width: 160,
                image: AssetImage('images/contact.png'),),
              onTap: (){
                Navigator.pop(context);
                Navigator.pushNamed(context, '/contact');
              },
            ),
            InkWell(
              child: Ink.image(
                height: 180,
                width: 160,
                image: AssetImage('images/parametres.png'),),
              onTap: (){
                Navigator.pop(context);
                Navigator.pushNamed(context, '/parametres');
              },
            ),
            InkWell(
              child: Ink.image(
                height: 180,
                width: 160,
                image: AssetImage('images/deconnexion.png'),),
              onTap: (){
                _Deconnexion(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  Future <void> _Deconnexion(BuildContext context) async {
    prefs = await SharedPreferences.getInstance();
    prefs.setBool("connecte", false);
    Navigator.of(context).pushNamedAndRemoveUntil('/authentification',
            (Route<dynamic> route) => false);
  }
}

