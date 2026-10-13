abstract class Animal {
  int paws;

  Animal(this.paws);
  void MakeSound();
}


class Dog extends Animal{
  Dog() : super(4);
  void MakeSound(){
    print("wooouuuuu");
  }
}
class Cat extends Animal{
  Cat() : super(4);
  void MakeSound(){
    print("miauuuu");
  }
}

class Cow extends Animal{
  Cow() : super(4);
  void MakeSound(){
    print("muuuuuuu");
  }
}