import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:voyage1/pages/authentification.page.dart';
import 'package:voyage1/pages/contact.page.dart';
import 'package:voyage1/pages/gallerie.page.dart';
import 'package:voyage1/pages/home.page.dart';
import 'package:voyage1/pages/inscription.page.dart';
import 'package:voyage1/pages/meteo.page.dart';
import 'package:voyage1/pages/parametre.page.dart';
import 'package:voyage1/pages/pays.page.dart';

void main () => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = {
    '/home': (context) => HomePage(),
    '/inscription': (context) => InscriptionPage(),
    '/authentification': (context) => AuthentificationPage(),
    '/meteo' : (context) => MeteoPage(),
    '/gallerie' : (context) => GalleriePage(),
    '/pays' : (context) => PaysPage(),
    '/contact' : (context) => const ContactPage(),
    '/parametres' : (context) => const ParametrePage(),
  };

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: SharedPreferences.getInstance(),
        builder: (BuildContext context,
            AsyncSnapshot<SharedPreferences> prefs) {
          var x = prefs.data;
          if (prefs.hasData) {
            bool conn = x?.getBool('connecte') ?? false;
            if (conn)
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                home: HomePage(),
                routes: routes,
              );
          }
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            routes: routes,
            home: AuthentificationPage(),
          );
        }
    );
  }}
