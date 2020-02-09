import 'package:flutter/material.dart';
class GridviewKullanim extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount:1 ,                             //mainaxes yana doğru sıralama crosaxes yukarıdan aşağıya doğru sıralama
      primary: false,                  //kayan efektin aktif yada pasif olması durumu...
      scrollDirection: Axis.horizontal,  //yana doğru kaydırma aktifleşti.cross ve main işlevleri yer değiştirdi....
      padding: EdgeInsets.all(10.0),
      crossAxisSpacing: 10,              //sütunlar arası boşluk
      mainAxisSpacing: 10,               //iki satır arası boşluk
      children: <Widget>[
         Image.network("https://images.pexels.com/photos/3617460/pexels-photo-3617460.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",width: 1000,),
        Container(
         // margin: EdgeInsets.all(40.0),
          alignment: Alignment.center,    //container ortalama
          color: Colors.teal.shade400,
          child: Text("Harun Ayyıldız",textAlign: TextAlign.center,style: TextStyle(fontSize: 50),),  //yazı ortalama
        ),
        Container(

          //margin: EdgeInsets.all(40.0),
          alignment: Alignment.center,    //container ortalama
          color: Colors.teal.shade400,
          child: Text("Deneme Grid  ",textAlign: TextAlign.center,style: TextStyle(fontSize: 50)),  //yazı ortalama
        ),
      ],
    );
  }
}
