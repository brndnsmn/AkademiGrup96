import 'package:flutter_oyun/oyun_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_oyun/models/oyun.dart';

class oyunDetay extends StatelessWidget {
  final int data;
  oyunDetay(this.data);

  @override
  Widget build(BuildContext context) {
    Oyun secilenOyun = oyunListesi.tumOyunlar[data];
    return Scaffold(
        primary: false,
        body: CustomScrollView(
          primary: true,
          slivers: [
            SliverAppBar(
              expandedHeight: 250,
              pinned: true,
              primary: true,
              backgroundColor: Colors.pink,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  "images/" + secilenOyun.oyunBuyukResim,
                  fit: BoxFit.cover,
                ),
                centerTitle: true,
                title: Text(secilenOyun.oyunAdi),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                color: Colors.pink.shade100,
                child: SingleChildScrollView(
                  padding: EdgeInsets.all(8),
                  child: Text(
                    secilenOyun.oyunDetay,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
