import 'package:flutter/material.dart';
import 'package:voyage1/menu/drawer.widget.dart';

class ParametrePage extends StatelessWidget {
  const ParametrePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(
          title: const Text('Parametre'),
        ),
        body: Center(
          child: Text(
            'Page Parametre',
            style: Theme.of(context).textTheme.headline3,
          ),
        )
    );
  }
}
