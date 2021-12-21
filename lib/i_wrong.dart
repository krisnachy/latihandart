//Contoh yang salah, karena memaksakan menggunakan fungsi yang bisa dijalankan pada kelas tersebut

abstract class IHeroAbility {
  void heal();
  void castMagic();
  void stealMoney();
}

abstract class Hero implements IHeroAbility {
  void regularAttack();
}

class Thief extends Hero {
  @override 
  void castMagic() {
    //do nothing
  }

  @override 
  void heal() {
    //do nothing
  }

  @override 
  void regularAttack() {
    
  }

  @override 
  void stealMoney() {
    
  }
}

class BlackMage extends Hero {
  @override 
  void castMagic() {
    
  }

  @override 
  void heal() {
    //do nothing
  }

  @override 
  void regularAttack() {
    
  }

  @override 
  void stealMoney() {
    //do nothing
  }
}