import 'package:flutter/material.dart';
class ListeYapisi extends StatelessWidget {
  List<int> listenumaralari = List.generate(5, (index) => index);
  //List<String> listealtbaslik = List.generate(20, (index) => " Alt başlık $index");
  List<String> listealtbaslikk = [
    "İstanbul",
    "Ankara",
    "Eskişehir",
    "İzmir",
    "Antalya"
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: listenumaralari.map(
            (oankinumara) => Container(
              child: Card(
                margin: EdgeInsets.all(10),
                color: Colors.grey.shade200,
                elevation: 20,
                child: ListTile(
                  leading: CircleAvatar(
                    child: Icon(Icons.location_city),
                    radius: 20,
                    backgroundColor: Colors.black45,
                  ),
                  title: Text("$oankinumara"),
                  subtitle: Text("${listealtbaslikk[oankinumara]}"),
                  trailing: Icon(Icons.arrow_forward_ios, size: 20,),
                  onTap: () {
                    debugPrint(oankinumara.toString());
                  },
                ),
              ),
            ),
          ).toList(),
    );
  }
}

//listwiev : elemanlar ekrana sığmıyorsa kaydırma efekti veren bir witget
