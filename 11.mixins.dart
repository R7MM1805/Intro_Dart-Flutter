abstract class Animal {}

abstract class Mammal extends Animal {}

abstract class Bird extends Animal {}

abstract class Fish extends Animal {}

mixin Flyer {
  void flyer() => print('I can fly');
}

mixin Walker {
  void walker() => print('I can walk');
}

mixin Swimmer {
  void swimmer() => print('I can Swim');
}

class Dolphin extends Mammal with Swimmer {}

class Bat extends Mammal with Flyer, Walker {}

class Cat extends Mammal with Walker {}

class Dove extends Bird with Flyer, Walker {}

class Duck extends Bird with Flyer, Walker, Swimmer {}

class Shark extends Fish with Swimmer {}

class FlyingFish extends Fish with Swimmer, Flyer {}

void main(List<String> args) {
  final dolphin = Dolphin();
  dolphin.swimmer();

  final bat = Bat();
  bat.walker();
  bat.flyer();

  final duck = Duck();
  duck.flyer();
  duck.swimmer();
  duck.walker();
}
