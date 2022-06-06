import 'package:flutter_oyun/models/oyun.dart';
import 'package:flutter_oyun/utils/strings.dart';
import 'package:flutter/material.dart';

class oyunListesi extends StatelessWidget {
  static List<Oyun> tumOyunlar = veriKaynaginiHazirla();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(alignment:Alignment.center,
            child: Text("Benim Oyunum")),
      ),
      body: listeHazirla(),
    );
  }

  static List<Oyun> veriKaynaginiHazirla() {
    List<Oyun> oyunlar = [];
    for (int i = 0; i < 12; i++) {
      String kucukResim = Strings.OYUN_ADLARI[i].toLowerCase() + "${i + 1}.png";
      String buyukResim =
          Strings.OYUN_ADLARI[i].toLowerCase() + "_buyuk${i + 1}.png";
      Oyun eklenecekOyun = Oyun(
          Strings.OYUN_ADLARI[i],
          Strings.OYUN_TARIHLERI[i],
          Strings.OYUN_GENEL_OZELLIKLERI[i],
          kucukResim,
          buyukResim);
      oyunlar.add(eklenecekOyun);
    }
    return oyunlar;
  }

  Widget listeHazirla() {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return OyunListeEleman(context, index);
      },
      itemCount: tumOyunlar.length,
    );
  }

  Widget OyunListeEleman(BuildContext context, int index) {
    Oyun oyunElement = tumOyunlar[index];

    return Card(
      elevation: 4,
      child: ListTile(
        onTap: () {
          Navigator.of(context).pushNamed("/oyun_detay", arguments: index);
        },
        leading: Image.asset(
          "images/" + oyunElement.oyunKucukResim,
          width: 64,
          height: 64,
        ),
        title: Text(
          oyunElement.oyunAdi,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.pink.shade300),
        ),
        subtitle: Text(
          oyunElement.oyunTanitimi,
          style: TextStyle(
              fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        trailing: Icon(Icons.arrow_forward),
      ),
    );
  }
}
