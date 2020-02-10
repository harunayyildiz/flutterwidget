import 'package:flutter/material.dart';
class Radiokullanim extends StatefulWidget {
  @override
  _RadiokullanimState createState() => _RadiokullanimState();
}
class _RadiokullanimState extends State<Radiokullanim> {
  String groupValuee = "";
  List<String> elementss = ["Sen", "Ben", "Biz"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Radiokullanim"),
      ),
      //Eğerki radiolisttile string seçersen value da onchanged de string olur
      body: ListView(
        children: <Widget>[
          RadioListTile<String>(
            value: elementss[0],
            groupValue: groupValuee,
            title: Text(elementss[0]),
            onChanged: (deger) {
              debugPrint("Seçilen değer : $deger");
              setState(() {
                groupValuee =deger;
                //Tıklanma olayının olması için hep set state kullanıyoruz ve grup isimlerinin hep aynı olması gerek
              });
            },
          ),
          RadioListTile<String>(
            value: elementss[1],
            groupValue: groupValuee,
            title: Text(elementss[1]),
            onChanged: (deger) {
              debugPrint("Seçilen değer : $deger");
              setState(() {
                groupValuee =deger;
                //tıklanma olayının olması için hep set state kullanıyoruz ve grup isimlerinin hep aynı olması gerek
              });
            },
          ),
          RadioListTile<String>(
            value: elementss[2],
            groupValue: groupValuee,
            title: Text(elementss[2]),
            onChanged: (deger) {
              debugPrint("Seçilen değer : $deger");
              setState(() {
                groupValuee =deger;
                //tıklanma olayının olması için hep set state kullanıyoruz ve grup isimlerinin hep aynı olması gerek
              });
            },
          ),
        ],
      ),
    );
  }
}
