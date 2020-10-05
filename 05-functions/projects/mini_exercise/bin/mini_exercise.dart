// Copyright (c) 2020 Razeware LLC
// For full license & permission details, see LICENSE.

import 'package:meta/meta.dart';

void main() {
  functionBasicsMiniExercise1();
  functionBasicsMiniExercise2();
  functionBasicsMiniExercise3();

  anonymousFunctionsMiniExercise1();
  anonymousFunctionsMiniExercise2();

  arrowFunctionsMiniExercise1();
}

/// Function basics: Mini-exercise 1
///
/// Write a function named `youAreWonderful` with a String parameter
/// called `name`. It returns a string using `name`, something like 
/// "You're wonderful, Bob."
void functionBasicsMiniExercise1() {
  String youAreWonderful(String name) {
    return "You're wonderful, $name.";
  }

  print(youAreWonderful('Bob'));
}

/// Function basics: Mini-exercise 2
///
/// Add another `int` parameter called `numberPeople` so that the
/// function returns something like "You're wonderful, Bob. 10 people
/// think so." Make both inputs named parameters.
void functionBasicsMiniExercise2() {
  String youAreWonderful({String name, int numberPeople}) {
    return "You're wonderful, $name. $numberPeople think so.";
  }

  print(youAreWonderful(name: 'Bob', numberPeople: 10));
}

/// Function basics: Mini-exercise 3
///
/// Make `name` required and `numberPeople` have a default of `30`.
void functionBasicsMiniExercise3() {
  // Remember to add the meta package to pubspec.yaml.
  // Also import 'package:meta/meta.dart';
  String youAreWonderful({
    @required String name,
    int numberPeople = 30,
  }) {
    return "You're wonderful, $name. $numberPeople think so.";
  }

  print(youAreWonderful(name: 'Mary'));
}

/// Anonymous functions: Mini-exercise 1
///
/// Change the `youAreWonderful()` function in the first mini-exercise
/// of this chapter into an anonymous function. Assign it to a variable
/// called `wonderful`.
void anonymousFunctionsMiniExercise1() {
  final wonderful = (String name) {
    return "You're wonderful, $name.";
  };

  print(wonderful('Bob'));
}

/// Anonymous functions: Mini-exercise 2
///
/// Using `forEach()`, print a message telling the people in the following
/// list that they're wonderful.
///
/// ```
/// const people = ['Chris', 'Tiffani', 'Pablo'];
/// ```
void anonymousFunctionsMiniExercise2() {
  const people = ['Chris', 'Tiffani', 'Pablo'];
  people.forEach((person) {
    print("You're wonderful, $person.");
  });
}

/// Arrow functions: Mini-exercise 1
///
/// Change the `forEach()` loop in the previous "You're wonderful"
/// mini-exercise to use arrow syntax.
void arrowFunctionsMiniExercise1() {
  const people = ['Chris', 'Tiffani', 'Pablo'];
  people.forEach((person) => print("You're wonderful, $person."));
}