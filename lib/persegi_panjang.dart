class PersegiPanjang {
  /*
  define the fields of the class object
  underscore sign in front of the property name will define the property as a private property
   */
  double _panjang;
  double _lebar;

  /*
  Getter & Setter
   */
  void setPanjang(double value) {
    if (value < 0) {
      value *= -1;
    }

    _panjang = value;
  }

  void set lebar(double value) {
    if (value < 0) {
      value *= -1;
    }

    _lebar = value;
  }

  double getPanjang() {
    return _panjang;
  }

  double get lebar {
    return _lebar;
  }

  double get luas => _panjang * _lebar;
}