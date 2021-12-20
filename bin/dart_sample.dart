import 'package:meta/meta.dart';

void main(List<String> arguments) {
  Person p;
  // p = Person(name: null);

  //try catch digunakan untuk kondisi yang berpotensi menimbulkan error, sehingga tidak menghambat kode lain untuk berjalan
  try {
    p = Person(name: null);
  } catch (e) {
    print(e);
  }

  print('Hello World');
}

class Person {
  final String name;
  final int age;

  //required membuat inisialisasi objek otomatis memasukkan parameter
  Person({@required this.name, this.age = 0}) {
    //assert membuat kondisi objek harus memenuhi syarat
    assert(name != null, "You must give the Person name");
  }
}
