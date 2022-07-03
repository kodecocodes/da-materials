// Copyright (c) 2022 Razeware LLC
// For full license & permission details, see LICENSE.

void main() {
  nullOverviewExercise1();
  nullOverviewExercise2();
  nullOverviewExercise3();

  challenge1();
}

/// Null overview: Exercise 1
///
/// Create a `String?` variable called `profession`, but don't give it a value.
/// Then you'll have `profession` `null`. Get it? Professional? :]
void nullOverviewExercise1() {
  String? profession;
  print(profession);
}

/// Null overview: Exercise 2
///
/// Give `profession` a value of "basketball player".
void nullOverviewExercise2() {
  String? profession;
  profession = 'basketball player';
  print(profession);
}

/// Null overview: Exercise 3
///
/// Write the following line and then hover your cursor over the variable
/// name. What type does Dart infer `iLove` to be? `String` or `String?`?
///
/// ```
/// const iLove = 'Dart';
/// ```
void nullOverviewExercise3() {
  const iLove = 'Dart';
  print(iLove.runtimeType);
  // `iLove` is of type String (non-nullable).
}

/// Challenge 1: Naming customs
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
void challenge1() {
  final ray = Name(givenName: 'Ray', surname: 'Wenderlich');
  final liMing = Name(surname: 'Li', givenName: 'Ming', surnameIsFirst: true);
  final baatar = Name(givenName: 'Baatar');

  print(ray);
  print(liMing);
  print(baatar);
}

class Name {
  Name({
    required this.givenName,
    this.surname,
    this.surnameIsFirst = false,
  });

  final String givenName;
  final String? surname;
  final bool surnameIsFirst;

  @override
  String toString() {
    if (surname == null) {
      return givenName;
    }
    if (surnameIsFirst) {
      return '$surname $givenName';
    }
    return '$givenName $surname';
  }
}
