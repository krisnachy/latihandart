import 'dart:io';

void main(List<String> arguments) {
  // MonsterHiu m = MonsterHiu();
  // m.move();

  // MonsterHiu m = MonsterHiu(status: 2);
  // m.move();

  //status lebih dari 2 menjadi default
  // MonsterHiu m = MonsterHiu(status: 3);
  // m.move();

  MonsterHiu m = MonsterHiu(status: HiumanStatus.poisoned);
  m.move();

  //Cascade notation digunakan ketika memamnggil beberapa method terhadap beberapa objek yang berurutan
  //Cascade notation menggunakan titik 2 dan titik koma hanya digunakan pada cascade terakhir
  // MonsterHiu h = MonsterHiu(status: HiumanStatus.confused)
  //   ..move()
  //   ..eat();

  MonsterHiu h = MonsterHiu(status: HiumanStatus.confused);
  print('Apa aja buat testing');
  //Jika ingin melanjutkan cascade maka harus mendeklarasikan lagi nama objeknya
  h
    ..move()
    ..eat();
}

//enum untuk pilihan-pilihan yang sifatnya banyak kasus
enum HiumanStatus { normal, poisoned, confused }

class MonsterHiu {
  // final int status; //1. Normal, 2. Poisoned, 3. Confused

  // MonsterHiu({this.status = 1}); //status default normal

  //Tidak menggunakan enum
  // void move() {
  //   switch (status) {
  //     case 1:
  //       print('Hiuman is Moving');
  //       break;
  //     case 2:
  //       print('Hiuman cant move, Hiuman is dying, Hiuman needs help.');
  //       break;
  //     default:
  //       print('Hiuman is spinning, Dart language is suuuuper confusing');
  //   }
  // }

  final HiumanStatus status;

  MonsterHiu({this.status = HiumanStatus.normal});

  void move() {
    switch (status) {
      case HiumanStatus.normal:
        print('Hiuman try to chase you');
        break;
      case HiumanStatus.poisoned:
        print('Hiuman starts to lose his blood');
        break;
      case HiumanStatus.confused:
        print('Hiuman cannot moved');
        break;
      default:
    }
  }

  void eat() {
    print('Hiuman eating INDOMIE');
  }
}
