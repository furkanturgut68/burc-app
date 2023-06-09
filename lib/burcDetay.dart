import 'package:flutter/material.dart';

import 'burc.dart';

class BurcDetay extends StatelessWidget {
  final Burc burc;
  const BurcDetay({required this.burc, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            backgroundColor: Colors.pink,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(burc.burcAdi+"Burcu ve Özellikleri"),
              centerTitle: true,
              background: Image.asset("images/"+burc.burcBuyukResim,fit: BoxFit.cover,),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.all(8.0),
              padding: EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Text(burc.burcDetay),
              ),
            ),
          ),
        ],
      ),
    );
  }
}