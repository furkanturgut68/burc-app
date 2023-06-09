import 'package:burcapp/burc.dart';
import 'package:burcapp/burcItem.dart';
import 'package:burcapp/data/strings.dart';
import 'package:flutter/material.dart';

class BurcList extends StatelessWidget {
  late final List<Burc> tumBurclar;
  BurcList() {
    tumBurclar = returnData();
  }

  List<Burc> returnData() {
    List<Burc> myData = [];

    for (var i = 0; i < 12; i++) {
      var burcAdi = Strings.BURC_ADLARI[i];
      var burcDetay = Strings.BURC_GENEL_OZELLIKLERI[i];
      var burcTarih = Strings.BURC_TARIHLERI[i];
      var kucukResim = Strings.BURC_ADLARI[i].toLowerCase() + '${i + 1}.png';
      var buyukResim =
          Strings.BURC_ADLARI[i].toLowerCase() + '_buyuk' + '${i + 1}.png';

      Burc myBurc = Burc(burcAdi, burcDetay, burcTarih, buyukResim, kucukResim);
      myData.add(myBurc);
    }
    return myData;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text("Burçlar App"),
      ),
      body: Center(
        child: ListView.builder(itemBuilder: (context,index){
            return BurcItem(burc: tumBurclar[index]);
        },
        itemCount: tumBurclar.length,),
      ),
    );
  }
}
