import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _page = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BOTTOM NAVIGATION BAR",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        actions: <Widget>[
          InkWell(
          child:Icon(Icons.looks_one,size: 34),
      onTap: (){
        final CurvedNavigationBarState navBarState = _bottomNavigationKey.currentState;
        navBarState.setPage(1);
      },
      ),
        ],
      ),
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: 0,
          height: 50.0,
          items: <Widget>[
            Icon(Icons.add, size: 30),
            Icon(Icons.list, size: 30),
            Icon(Icons.compare_arrows, size: 30),
            Icon(Icons.call_split, size: 30),
            Icon(Icons.perm_identity, size: 30),
          ],
          color: Colors.white,
          buttonBackgroundColor: Colors.white,
          backgroundColor: Colors.black,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 600),
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
        ),
        //.fromARGB(240, 180, 1 , 1),
        body: Container(
          color: Colors.black,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(_page.toString()+".Sayfa", textScaleFactor: 3.0,style:TextStyle(color:Colors.white,fontWeight: FontWeight.w300),),
              ],
            ),
          ),
        ));
  }
}
