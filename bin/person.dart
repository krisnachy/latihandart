class Person {
  String name;

  //constructor
  // Person() {
  //   print("Sedang membuat objek person");
  //   name = "no name";
  // }

  // Jika tidak memberikan [] maka pada main wajib memasukkan parameter
  // Person([String name = 'no name']) {
  //   print('constructor person');
  //   this.name = name;
  // }

  Person({String name = 'no name'}) {
    print('constructor person');
    this.name = name;
  }
}
