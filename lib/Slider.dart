import 'package:flutter/material.dart';

class Sliderkullanim extends StatefulWidget {
  @override
  _SliderkullanimState createState() => _SliderkullanimState();
}

class _SliderkullanimState extends State<Sliderkullanim> {
  double sliderValuee = 10; //mesela yazı tipi büyüklüğü olarak ayarlanabilir...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Slider kullanimi"),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(45),
            child: Slider(
              value: sliderValuee,
              min: 10, //min boyutu ve ilk değerle eşit olmalı
              max: 40, //max boyutu
              divisions: 100, //artış
              label: sliderValuee.toString(), //üstteki baloncuğa yazdırma
              activeColor: Colors.black,
              inactiveColor: Colors.red,
              onChanged: (oynanan) {
                setState(() {
                  sliderValuee = oynanan;
                });
              },
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              "HARUN AYYILDIZ",
              style: TextStyle(fontSize: sliderValuee),
            ),
          ),
        ],
      ),
    );
  }
}
