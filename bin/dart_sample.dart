import 'package:dart_sample/datetime_secure_box.dart';
import 'package:dart_sample/int_secure_box.dart';

void main(List<String> arguments) {
  var box = IntSecureBox(100, '123');

  print(box.getData('123').toString());
  //Jika salah
  print(box.getData('321').toString());

  var dateBox = DateTimeSecureBox(DateTime.now(), '456');
  print(dateBox.getData('456'));
}
