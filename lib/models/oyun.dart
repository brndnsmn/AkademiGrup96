class Oyun {
  String _oyunAdi;
  String _oyunTanitimi;
  String _oyunDetay;
  String _oyunKucukResim;
  String _oyunBuyukResim;

  Oyun(this._oyunAdi, this._oyunTanitimi, this._oyunDetay, this._oyunKucukResim,
      this._oyunBuyukResim);

  String get oyunBuyukResim => _oyunBuyukResim;

  set oyunBuyukResim(String value) {
    _oyunBuyukResim = value;
  }

  String get oyunKucukResim => _oyunKucukResim;

  set oyunKucukResim(String value) {
    _oyunKucukResim = value;
  }

  String get oyunDetay => _oyunDetay;

  set oyunDetay(String value) {
    _oyunDetay = value;
  }

  String get oyunTanitimi => _oyunTanitimi;

  set oyunTanitimi(String value) {
    _oyunTanitimi = value;
  }

  String get oyunAdi => _oyunAdi;

  set oyunAdi(String value) {
    _oyunAdi = value;
  }
}
