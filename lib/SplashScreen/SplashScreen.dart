import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterwidget/BottomNavigation/BottomNavigation.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3),(){
     // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeState()));
      //Geri Gelme yok
      //Yönlendirilecek sayfanın yolu verilebilir
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Üst Üste gelecek widgetlar çok yer kaplayabilir.
      //yada bütün alana yayılabilirmi?
      body: Stack(fit: StackFit.expand, children: <Widget>[
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xFFC8C8C8), Color(0xFF646464)],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.font_download,size:85,color: Colors.black87,),
                    Padding(padding: EdgeInsets.only(top: 10),),
                    Text("APP ADI",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w300),),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircularProgressIndicator(backgroundColor: Colors.white70,),
                  Padding(padding: EdgeInsets.only(top: 20),),
                  Text("Lütfen Bekleyiniz\n     Yükleniyor...",
                    style: TextStyle(fontSize:15,fontWeight: FontWeight.w300),),
                  Padding(padding: EdgeInsets.only(bottom: 40),),
                ],
              ),
            ),
          ],
        ),

      ]),
    );
  }
}
