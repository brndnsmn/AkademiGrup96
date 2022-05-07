class Oyun {
  final String _oyunAdi;
  final String _oyunDetayi;
  final String _oyunKucukResim;
  final String _oyunBuyukResim;
  
  get oyunAdi => this._oyunAdi;


  get oyunDetayi => this._oyunDetayi;

  get oyunKucukResim => this._oyunKucukResim;

  get oyunBuyukResim => this._oyunBuyukResim;


  Oyun(this._oyunAdi, this._oyunDetayi, this._oyunKucukResim,
      this._oyunBuyukResim);

  

  @override
  String toString() {
    return '$_oyunAdi - $_oyunBuyukResim';
  }
}
