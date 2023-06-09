import 'package:burcapp/burcDetay.dart';
import 'package:flutter/material.dart';

import 'burc.dart';

class BurcItem extends StatelessWidget {
  final Burc burc;

  const BurcItem({required this.burc, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        elevation: 4,
        child: ListTile(
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=> BurcDetay(burc: burc,)));
          },
          leading: Image.asset(
            "images/" + burc.burcKucukResim,
            width: 64,
            height: 64,
          ),
          title: Text(burc.burcAdi),
          subtitle: Text(burc.burcTarih),
          trailing:const Icon(
            Icons.arrow_forward_ios,
            color: Colors.pink,
          ),
        ),
      ),
    );
  }
}
