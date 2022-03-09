// Copyright (c) 2021 Razeware LLC
// For full license & permission details, see LICENSE.

void main() {
  extendingClassesMiniExercise1();
  extendingClassesMiniExercise2();
  extendingClassesMiniExercise3();

  interfacesMiniExercises();

  mixinsMiniExercise();
}

/// Extending classes

void extendingClassesMiniExercise1() {
  /// Extending classes: Mini-exercise 1
  ///
  /// Create a class named `Fruit` with a `String` field named `color` and a
  /// method named `describeColor` which uses `color` to print a message.

  final fruit = Fruit('yellow');
  fruit.describeColor();
}

class Fruit {
  Fruit(this.color);
  final color;
  void describeColor() {
    print("This fruit's color is $color.");
  }
}

void extendingClassesMiniExercise2() {
  /// Extending classes: Mini-exercise 2
  ///
  /// Create a subclass of `Fruit` named `Melon` and then create two `Melon`
  /// subclasses named `Watermelon` and `Cantaloupe`.

  final melon = Melon('blue');
  final watermelon = Watermelon('red and green');
  final cantaloupe = Cantaloupe('orange');
  melon.describeColor();
  watermelon.describeColor();
  cantaloupe.describeColor();
}

class Melon extends Fruit {
  Melon(String color) : super(color);
}

// class Watermelon extends Melon {
//   Watermelon(String color) : super(color);
// }
class Cantaloupe extends Melon {
  Cantaloupe(String color) : super(color);
}

void extendingClassesMiniExercise3() {
  /// Extending classes: Mini-exercise 3
  ///
  /// Override `describeColor` in the `Watermelon` class to vary the output.

  final fruit = Fruit('yellow');
  final watermelon = Watermelon('red and green');
  fruit.describeColor();
  watermelon.describeColor();
}

class Watermelon extends Melon {
  Watermelon(String color) : super(color);
  @override
  void describeColor() {
    print('The color of this watermelon is $color.');
  }
}

/// Interfaces

void interfacesMiniExercises() {
  /// Interfaces Mini-exercices
  /// 
  /// 1. Create an interface called `Bottle` and add a method to it 
  ///    called `open`.
  /// 2. Create a concrete class called `SodaBottle` that implements 
  ///    `Bottle` and prints "Fizz fizz" when `open` is called.
  /// 3. Add a factory constructor to `Bottle` that returns a `SodaBottle` 
  ///    instance.
  /// 4. Instantiate `SodaBottle` by using the `Bottle` factory constructor 
  ///    and call `open` on the object.

  final bottle = Bottle();
  bottle.open();
}

abstract class Bottle {
  factory Bottle() => SodaBottle();
  void open();
}

class SodaBottle implements Bottle {
  @override
  void open() {
    print('Fizz fizz');
  }
}

/// Mixins

void mixinsMiniExercise() {
  /// Mixins Mini-exercices
  /// 
  /// 1. Create a class called `Calculator` with a method called `sum` 
  ///    that prints the sum of the two arguments you give it.
  /// 2. Extract the logic in `sum` to a mixin called `Adder`.
  /// 3. Use the mixin in `Calculator`.
  
  final calculator = Calculator();
  calculator.sum(4, 6);
}

// class Calculator {
//   void sum(num a, num b) {
//     print('The sum is ${a + b}.');
//   }
// }

class Calculator with Adder {}

mixin Adder {
  void sum(num a, num b) {
    print('The sum is ${a + b}.');
  }
}