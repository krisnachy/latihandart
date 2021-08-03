class PersegiPanjang {
  double _panjang, lebar;

  //Menggunakan setter getter
  void setPanjang(double value) {
    if (value < 0) {
      value *= -1;
    }

    _panjang = value;
  }

  double luasPersegiPanjang() {
    return this._panjang * this.lebar;
  }
}
