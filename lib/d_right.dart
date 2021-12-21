import 'package:dart_sample/d_wrong.dart';

class User {

}


//High Level modul, data yang jarang untuk berubah sehingga bergantung pada interface
class UserManager {
  final IDataStorage dataStorage;

  UserManager(this.dataStorage);

  void saveUserData(User user) {
    dataStorage.saveData(user);
  }
}

abstract class IDataStorage {
  void saveData(User user);
}

class FirebaseStorage implements IDataStorage {
  @override 
  void saveData(User user) {
    //konek ke firebase
    //save data
  }
}

class LocalStorage implements IDataStorage {
  @override 
  void saveData(User user) {
    //konek ke local storage
    //save data
  }
}