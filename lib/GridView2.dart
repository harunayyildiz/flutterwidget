import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
class Gridextend extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2),
      itemCount:10,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(25)),
              boxShadow: [
                new BoxShadow(
                    color: Colors.black,
                    offset: Offset(5.0, 2.0),
                    blurRadius: 50.0),
              ],
              ////////////////shape: BoxShape.circle,        //tamamen yuvarlak yapma
              // color: Colors.teal[100 * (index % 9)],
              gradient: LinearGradient(
                  colors: [Colors.grey, Colors.black87],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage("https://images.pexels.com/photos/614117/pexels-photo-614117.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
              ),
            ),
            margin: EdgeInsets.all(10.0),
            child: Text(
              "Code ${index + 1}",
              style: TextStyle(color: Colors.white,fontSize: 25),
            ),
          ),
          onTap: (){
            debugPrint("$index tıklanıldı");
          },
        );
      },
    );
  }
}