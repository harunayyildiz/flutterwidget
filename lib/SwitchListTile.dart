import 'package:flutter/material.dart';

class Switchlisttile extends StatefulWidget {
  @override
  _SwitchlisttileState createState() => _SwitchlisttileState();
}

class _SwitchlisttileState extends State<Switchlisttile> {
  bool switchdurum = false; //değ tanımlama
  int renk1 = 255;
  int renk2 = 0;
  int renk3 = 0;
  int renk4 = 0;
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(primaryColor: Color.fromARGB(renk1, renk2, renk3, renk4)),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true, //title ortada kalsın
          title: Text(
            "SwitchMacerası",
          ),
        ),
        body: ListView(
          //çok eleman koyabilmek ve kaydırma için
          children: <Widget>[
            SwitchListTile(
              title: Text("Dark Mode"),
              subtitle: Text("Aktif/Pasif"),
              value: switchdurum,
              secondary: Icon(
                Icons.invert_colors,
                size: 30,
              ),
              onChanged: (deger) {
                //onchange bir boolen değer döndürüyor bu da valuesi oluyo yani tıklandıkça value değişiyor
                setState(() {
                  switchdurum = deger;
                  if (switchdurum == true) {
                    renk1 = 0;
                    renk2 = 0;
                    renk3 = 0;
                  } else {
                    renk1 = 255;
                    renk2 = 0;
                    renk3 = 0;
                    renk4 = 0;
                  }
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
