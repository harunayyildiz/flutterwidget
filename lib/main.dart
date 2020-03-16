import 'package:flutter/material.dart';
import 'Checkbox.dart';
import 'GridView.dart';
import 'GridView2.dart';
import 'ImageSlider.dart';
import 'ImageSlider2.dart';
import 'Liste/ListeYapisi2.dart';
import 'RadioList.dart';
import 'Slider.dart';
import 'SplashScreen/SplashScreen.dart';

void main()=>runApp(StartApp());
class StartApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
        accentColor: Colors.grey,
        //loading color
      ),
      home:etkin_Liste(),
    );
  }
}

//ImageSlider için Scaffold Sabit
//Scaffold(
//appBar: AppBar(
//centerTitle: true,
//title: Text("IMAGE SLİDER"),
//),
//body: MekanScreen(),
//),