import 'package:flutter/material.dart';
import 'BottomNavigation/BottomNavigation.dart';
void main()=>runApp(StartApp());
class StartApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      home:HomeState(),
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