import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';

import 'burc.dart';

class BurcDetay extends StatefulWidget {
  final Burc burc;
  const BurcDetay({required this.burc, super.key});

  @override
  State<BurcDetay> createState() => _BurcDetayState();
}

class _BurcDetayState extends State<BurcDetay> {
  Color appBarColor = Colors.pink;
  late PaletteGenerator generator;

  @override
  void initState() {
    super.initState();
    myAppBarColor();
  }
  void myAppBarColor() async{
    generator = await PaletteGenerator.fromImageProvider(AssetImage('images/${widget.burc.burcBuyukResim}'));
    appBarColor = generator.dominantColor!.color;
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            backgroundColor:appBarColor,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(widget.burc.burcAdi+"Burcu ve Özellikleri"),
              centerTitle: true,
              background: Image.asset("images/"+widget.burc.burcBuyukResim,fit: BoxFit.cover,),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.all(8.0),
              padding: EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Text(widget.burc.burcDetay),
              ),
            ),
          ),
        ],
      ),
    );
  }
}