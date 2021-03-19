// Copyright (c) 2021 Razeware LLC
// For full license & permission details, see LICENSE.

void main() {
  /// Data types in Dart: Mini-exercise 1
  ///
  /// Create a constant called `age1` and set it equal to `42`. Create another
  /// constant called `age2` and set it equal to `21`. Check by hovering over
  /// the variable names that the type for both has been inferred correctly as
  /// `int`.

  const age1 = 42;
  const age2 = 21;

  /// Data types in Dart: Mini-exercise 2
  ///
  /// Create a constant called `averageAge` and set it equal to the average of
  /// `age1` and `age2` using the operation `(age1 + age2) / 2`. Hover over
  /// `averageAge` to check the type. Then check the result of `averageAge`. Why
  /// is it a `double` if the components are all `int`?

  const averageAge = (age1 + age2) / 2;
  print(averageAge);
  // `averageAge` is a `double` because any time you divide in Dart, the
  // result is a `double`. Division can result in non-integer answers, so
  // making the result an `int` could cause a loss of precision.

  /// Strings: Mini-exercise 1
  ///
  /// Create a string constant called `firstName` and initialize it to your
  /// first name. Also create a string constant called `lastName` and
  /// initialize it to your last name.

  const firstName = 'Ray';
  const lastName = 'Wenderlich';

  /// Strings: Mini-exercise 2
  ///
  /// Create a string constant called `fullName` by adding the `firstName` and
  /// `lastName` constants together, separated by a space.

  const fullName = firstName + ' ' + lastName;
  print(fullName);

  /// Strings: Mini-exercise 3
  ///
  /// Using interpolation, create a string constant called `myDetails` that
  /// uses the `fullName` constant to create a string introducing yourself.
  /// For example, Ray Wenderlich's string would read: "Hello, my name is Ray
  /// Wenderlich."

  const myDetails = 'Hello, my name is $firstName $lastName.';
  print(myDetails);
}
