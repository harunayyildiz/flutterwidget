import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
//carousel_slider: ^1.4.1 Kütüphanesini Kullandık
//Scaffold Sabit Body Değişiyor

final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
];
final List child = map<Widget>(imgList, (index, i) {
  return SingleChildScrollView(
    child: Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(5),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            child: Stack(
              children: <Widget>[
                Image.network(i, fit: BoxFit.cover,width: 1000.0,height: 500,),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}).toList();

List<T> map<T>(List list, Function handler) {
  List<T> result = [];
  for (var i = 0; i < list.length; i++) {
    result.add(handler(i, list[i]));
  }
  return result;
}

class ImageSlider extends StatefulWidget {
  @override
  _ImageSliderState createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      height: double.infinity, //En dıştaki containerin tüm alana yayılması
      child: Padding(
        padding: EdgeInsets.all(15),
        child: CarouselSlider(
          height:600,
          items: child,
          autoPlay: false,
          enlargeCenterPage: true,
          viewportFraction: 0.9, //Kenarındaki resimlerin gözükmesi arasındaki mesafe kontrolü
          aspectRatio: 2.0, //Kenarındaki resimlerin konumları kaydırmadaki konum
        ),
      ),
    );
  }
}
