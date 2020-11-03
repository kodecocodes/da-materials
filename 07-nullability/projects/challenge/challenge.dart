// Copyright (c) 2020 Razeware LLC
// For full license & permission details, see LICENSE.

import 'dart:math';

void main() {
  challenge1();
  challenge2();
}

void challenge1() {
  /// Challenge 1: Random nothings
  ///
  /// Write a function that randomly returns `42` or `null`. Assign
  /// the return value of the function to an variable named `result` that
  /// will never be `null`. Give `result` a default of `0` if the function
  /// returns `null`.

  int randomNothing() {
    final isTrue = Random().nextBool();
    return (isTrue) ? 42 : null;
  }

  final result = randomNothing() ?? 0;
  print(result);

  /// Note for sound null safety:
  ///
  /// Make the function return type be `int?` instead of `int`.
}

void challenge2() {
  /// Challenge 2: Naming customs
  ///
  /// People around the world have different customs for giving names to
  /// children. It would be difficult to create a data class to accurately
  /// represent them all, but try it like this:
  ///
  /// - Create a class called `Name` with `givenName` and `surname` properties.
  /// - Some people write the surname last and some write it first. Add a 
  ///   Boolean property called `surnameIsFirst` to keep track of this.
  /// - Not everyone in the world has a surname.
  /// - Add a `toString` method that prints the full name.
  ///
  /// Use sound null safety.

  // final ray = Name(givenName: 'Ray', surname: 'Wenderlich');
  // final liMing = Name(surname: 'Li', givenName: 'Ming', surnameIsFirst: true);
  // final baatar = Name(givenName: 'Baatar');

  // print(ray);
  // print(liMing);
  // print(baatar);
}

// class Name {
//   Name({
//     required this.givenName,
//     this.surname,
//     this.surnameIsFirst = false,
//   });

//   final String givenName;
//   final String? surname;
//   final bool surnameIsFirst;

//   @override
//   String toString() {
//     if (surname == null) {
//       return givenName;
//     }
//     if (surnameIsFirst) {
//       return '$surname $givenName';
//     }
//     return '$givenName $surname';
//   }
// }
