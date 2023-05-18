import 'package:flutter/material.dart';
import 'package:voyage1/menu/drawer.widget.dart';
import 'package:voyage1/pages/pays-details.page.dart';

class PaysPage extends StatelessWidget {
  TextEditingController txt_pays = new TextEditingController();

  void _onGetPaysDetails(BuildContext context) {
    String p=txt_pays.text;
    Navigator.push(context, MaterialPageRoute(builder: (context) => PaysDetailsPage(p)));
    txt_pays.text="";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(
          title: const Text('Page Pays'),
        ),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                controller: txt_pays,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.location_on),
                  hintText: "Pays",
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(50),
                ),
                onPressed: () {
                 _onGetPaysDetails(context);

                } ,
                child: const Text('Chercher', style: TextStyle(fontSize: 22),),
              ),
            )
          ],
        ),
    );
  }
}


