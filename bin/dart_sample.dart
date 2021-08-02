import 'dart:ffi';
import 'dart:io';

void main(List<String> arguments) {
  List<int> myArray = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  List<int> mySecondArray = [1, 2, 3];
  // mySecondArray[0] = 26;

  // int x = mySecondArray[0];
  // print(x);

  // for (int index = 0; index < mySecondArray.length; index++) {
  //   print(mySecondArray[index]);
  // }

  // for (int bilangan in mySecondArray) {
  //   print(bilangan);
  // }

  // mySecondArray.forEach((element) {
  //   print(element);
  // });

  myArray.add(10);
  myArray.addAll(mySecondArray);
  myArray.insert(1, 20);
  myArray.insertAll(3, [30, 40]);
  // myArray.removeLast();
  // myArray.removeAt(2);
  // myArray.removeRange(3, 4);
  myArray.removeWhere((element) => element % 2 != 0);

  myArray.forEach((element) {
    print(element);
  });
}
