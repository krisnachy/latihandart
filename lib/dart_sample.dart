class Person {
  String name;
  int age;
  //static mendefinisikan bahwa member dari kelas menjadi milik kelas bukan milik objek
  static int maxAge = 150;

  Person(this.name, int age) {
    //Jika umur lebih dari 150 maka masukkan 150, jika kurang maka masukkan nilai umur
    this.age = (age > 150) ? 150 : age;
  }
}
