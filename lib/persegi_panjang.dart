class PersegiPanjang {
  double _panjang, _lebar;

  //Menggunakan setter getter
  void setPanjang(double value) {
    if (value < 0) {
      value *= -1;
    }

    _panjang = value;
  }

  double getPanjang() {
    return _panjang;
  }

  //setter getter lebih simple
  void set lebar(double value) {
    _lebar = value;
  }

  double get lebar {
    return _lebar;
  }

  double luasPersegiPanjang() {
    return this._panjang * this._lebar;
  }
}
