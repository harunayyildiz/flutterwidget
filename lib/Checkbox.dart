import 'package:flutter/material.dart';

class CheckKullanim extends StatefulWidget {
  @override
  _CheckKullanimState createState() => _CheckKullanimState();
}

class _CheckKullanimState extends State<CheckKullanim> {
  bool checkboxdurumu = false; //ilk durumu veremen gerekiyor
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("Checkbox Kullanimi"),
        actions: <Widget>[
          Icon(Icons.search),
        ],
      ),
      body: CheckboxListTile(
        value: checkboxdurumu,
        title: Text("Reklam geç"),
        subtitle: Text("Geç"),
        activeColor: Colors.black, //seçilinceki iç dolgu
        checkColor: Colors.white, //seçilinceki tik rengi
        secondary: Icon(Icons.live_tv),  //eleman iconu
        onChanged: (secilmedurum) {
          setState(() {
            checkboxdurumu=secilmedurum;
          });
          if(checkboxdurumu==true)
          {
            debugPrint("seçilmiş durumda");
          }
        },
      ),
    );
  }
}
