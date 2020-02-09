import 'package:flutter/material.dart';
import 'package:flutterwidget/BottomNavigation/sayfa1.dart'; //1.Sayfamız
import 'package:flutterwidget/BottomNavigation/sayfa2.dart'; //2.Sayfamız
import 'package:flutterwidget/BottomNavigation/Sayfa3.dart'; //3.Sayfamız
class HomeState extends StatefulWidget {
  @override
  _HomeStateState createState() => _HomeStateState();
}
class _HomeStateState extends State<HomeState> {
  int secilenindex = 0;
  //Bu değişkene göre farklı farklı sayfalar arası geçiş yapılacak
  List<Widget> tumsayfalar;
  Sayfa1 sayfa1Ref;
  Sayfa2 sayfa2Ref;
  Sayfa3 sayfa3Ref;
  //Her sayfam geriye bir witget döndürdüğünden dolayı sayfamı temsili bir referans tanımladım
  @override
  void initState() {
    super.initState();
    sayfa1Ref=Sayfa1();
    sayfa2Ref=Sayfa2();
    sayfa3Ref=Sayfa3();
    tumsayfalar = [sayfa1Ref, sayfa2Ref,sayfa3Ref]; //bunları listeye attım (witget listesi)
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
         Padding(padding: EdgeInsets.all(10),child: Icon(Icons.search),),
        ],
        title: Text("BOTTOM NAVIGATION"),
        centerTitle: true,
      ),
      body:secilenindex<=tumsayfalar.length-1 ? tumsayfalar[secilenindex]:tumsayfalar[0],
      bottomNavigationBar: bottomnavigationbarkismi(),
    );
  }
  Widget bottomnavigationbarkismi() {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
        BottomNavigationBarItem(icon: Icon(Icons.drafts), title: Text("Mesaj")),
        BottomNavigationBarItem(icon: Icon(Icons.supervised_user_circle), title: Text("Profile")),
      ],
      currentIndex: secilenindex, //oanki seçilen index secilen botton olsun
      fixedColor: Colors.red, //seçilen butonun rengi
      onTap: _secilmedurumu,  //tıklanınca index geliyor buraya
    );
  }

  void _secilmedurumu(int index) {
    //değişikliğin sürekli aktif olması için
    setState(() {
      secilenindex = index; //
      debugPrint(secilenindex.toString());
    });
  }
}