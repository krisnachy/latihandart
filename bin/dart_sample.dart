import 'dart:io';

//untuk menggunakan await harus menggunakan async pada methodnya
void main(List<String> arguments) async {
  var p = Person();

  // print('job 1');
  // print('job 2');
  // await p.getDataAsync();
  // print('job 3 : ' + p.name);
  // print('job 4');

  //Jika ingin hanya job 3 yang delay maka dapat menggunakan perintah seperti di bawah tanpa menggunakan await
  print('job 1');
  print('job 2');
  //karena kemablian void(kosong) maka kembalian pada value tidak ada
  // ignore: unawaited_futures
  p.getDataAsync().then((_) {
    print('job 3 : ' + p.name);
  });
  print('job 4');
}

class Person {
  String name = 'default name';

  void getData() {
    name = 'Joko';
    print('get data [done]');
  }

  //future menunjukkan bahwa ketika get data hasilnya tidak langsung kembali
  //tipe kembalian dapat diganti sesuai kebutuhan tidak harus void
  Future<void> getDataAsync() async {
    //await berfungsi sebagai penunggu method agar selesai
    await Future.delayed(Duration(seconds: 3));
    name = 'Joko';
    print('get data [done]');
  }
}
