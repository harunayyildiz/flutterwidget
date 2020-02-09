import 'package:flutter/material.dart';
import 'package:flutterwidget/Liste/ListeYapisi.dart';
void main()=>runApp(StartApp());
class StartApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      home:Scaffold(
      appBar: AppBar(
      centerTitle: true,
    title: Text("LIST GENERATE"),),
    body: ListeYapisi(),
      ),
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