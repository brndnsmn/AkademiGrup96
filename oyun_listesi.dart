
class OyunKategorileri extends StatelessWidget {
  late final List<Oyun> oyunKategorileri;

  OyunKategorileri() {
    oyunKategorileri = veriKaynaginiHazirla();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Oyun Kategorileri'),
      ),
      body: Center(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return OyunItem(listelenenOyun: oyunKategorileri[index]);
          },
          itemCount: oyunKategorileri.length,
        ),
      ),
    );
  }

  List<Oyun> veriKaynaginiHazirla() {
    List<Oyun> gecici = [];

    for (int i = 0; i < 12; i++) {
      var OyunAdi = Strings.OYUN_KATEGORILERI[i];
      var kategoriAciklama = Strings.KATEGORI_ACIKLAMA[i];
      var oyunKucukResim =
          Strings.OYUN_KATEGORILERI[i].toLowerCase() + '${i + 1}.png';
      var oyunBuyukResim =
          Strings.OYUN_KATEGORILERI[i].toLowerCase() + '_buyuk' + '${i + 1}.png';
      Oyun eklenecekOyun =
          Oyun(oyunKategorileri, kategoriAciklama, oyunKucukResim, oyunBuyukResim);
      gecici.add(eklenecekOyun);
    }
    return gecici;
  }
}
