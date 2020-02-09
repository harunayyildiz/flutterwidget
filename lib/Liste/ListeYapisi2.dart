import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
class etkin_Liste extends StatelessWidget {
  List<Ogrenci> tumOgrenciler = [];
  @override
  Widget build(BuildContext context) {
    tumOgrenciler = List.generate(20,
            (index) => Ogrenci("Öğrenci $index", "öğrenci $index açıklaması",
            index % 2 == 0 ? true : false));
            //index cinsiyet için alınıyor
    return ListView.separated(
      //çok kullanılan listelerde araya seperator atmak yada araya witget koymak istenilen durumlarda kullanılır...
      separatorBuilder: (context, index) {
        if (index % 4 == 0 && index != 0) {
          return Container(
            height: 10,
            color: Colors.red,
          );
        } else {
          return Container();
        }
      },
      itemCount: 20,
      itemBuilder: (context, index) => Card(
        child: ListTile(
          leading: Icon(Icons.dashboard),
          title: Text(tumOgrenciler[index]._isim),
          subtitle: Text(tumOgrenciler[index]._aciklama),
          trailing: Icon(Icons.chevron_right),
          onTap: () {
            Fluttertoast.showToast(                              //toast mesaage   pubspec.yaml kullandık
                msg: "Tıklanılan Öğe : $index",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.BOTTOM,
                timeInSecForIos: 10,
                backgroundColor: Colors.black87,
                textColor: Colors.white,
                fontSize: 16.0);
          },
        ),
        elevation: 10,
          //color: index % 2 == 0 ? Colors.red.shade100 : Colors.grey.shade400,
      ),
    );
  }
}

class Ogrenci {
  String _isim;
  String _aciklama;
  bool _cins;
  Ogrenci(this._isim, this._aciklama, this._cins);
}
