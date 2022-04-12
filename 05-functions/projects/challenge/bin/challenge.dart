// Copyright (c) 2022 Razeware LLC
// For full license & permission details, see LICENSE.

import 'dart:math';

void main(List<String> arguments) {
  functionBasicsExercise1();
  functionBasicsExercise2();
  functionBasicsExercise3();

  challenge1();
  challenge2();
}

/// Function basics: Exercise 1
///
/// Write a function named `youAreWonderful` with a string parameter
/// called `name`. It should return a string using `name`, and say something
/// like "You're wonderful, Bob."
void functionBasicsExercise1() {
  String youAreWonderful(String name) {
    return "You're wonderful, $name.";
  }

  print(youAreWonderful('Bob'));
}

/// Function basics: Exercise 2
///
/// Add another `int` parameter called `numberPeople` so that the
/// function returns something like "You're wonderful, Bob. 10 people
/// think so."
void functionBasicsExercise2() {
  String youAreWonderful(String name, int numberPeople) {
    return "You're wonderful, $name. $numberPeople people think so.";
  }

  print(youAreWonderful('Bob', 10));
}

/// Function basics: Exercise 3
///
///  Make both inputs named parameters. Make `name` required and
///  set `numberPeople` to have a default of `30`.
void functionBasicsExercise3() {
  String youAreWonderful({
    required String name,
    int numberPeople = 30,
  }) {
    return "You're wonderful, $name. $numberPeople people think so.";
  }

  print(youAreWonderful(name: 'Mary'));
}

/// Challenge 1: Circular Area
///
/// Write a function that tells you the area of a circle based on some input
/// radius. If you recall from geometry class, you can find the area of a
/// circle by multiplying pi times the radius squared.
void challenge1() {
  // pi is in the dart:math library.
  double areaCircle(double radius) {
    return pi * radius * radius;
  }

  final result = areaCircle(3);
  print(result);
}

/// Challenge 2: Prime Time
///
/// Write a function that checks if a number is prime.
///
/// First, write a function with the following signature to determine if one
/// number is divisible by another:
///
/// ```
/// bool isNumberDivisible(int number, int divisor)
/// ```
///
/// The modulo operator `%` will help with that.
///
/// Then, write the function that returns `true` if prime and `false` otherwise:
///
/// ```
/// bool isPrime(int number)
/// ```
///
/// A number is prime if it's only divisible by 1 and itself. Loop through the
/// numbers from 1 to the number and find the number's divisors. If it has any
/// divisors other than 1 and itself, it's not prime.
///
/// Check the following cases:
///
/// ```dart
/// isPrime(6); // false
/// isPrime(13); // true
/// isPrime(8893); // true
/// ```
///
/// Here are a few more hints:
///
/// - Numbers less than zero are not considered prime.
/// - Use a `for` loop to look for divisors. You can start at 2 and if you
/// end before the number, return false.
/// - If you're clever, you can loop from 2 until you reach the square root
/// of the number. Add the following import to the top of the file to access
/// the `sqrt` function:
///
/// ```dart
/// import 'dart:math';
/// ```
void challenge2() {
  bool isNumberDivisible(int number, int divisor) => number % divisor == 0;

  bool isPrime(int number) {
    for (var i = 2; i <= sqrt(number); i++) {
      if (isNumberDivisible(number, i)) {
        return false;
      }
    }
    return true;
  }

  print(isPrime(6));
  print(isPrime(13));
  print(isPrime(8893));
}
