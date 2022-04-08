// Copyright (c) 2022 Razeware LLC
// For full license & permission details, see LICENSE.

// If you get the error "Target of URI doesn't exist", make sure you have
// run `dart pub get`. Then restart VS Code.
import 'package:characters/characters.dart';

void main() {
  /// Exercise 1
  ///
  /// Create a string constant called `firstName` and initialize it to your
  /// first name. Also create a string constant called `lastName` and
  /// initialize it to your last name.

  const firstName = 'Ray';
  const lastName = 'Wenderlich';

  /// Exercise 2
  ///
  /// Create a string constant called `fullName` by adding the `firstName` and
  /// `lastName` constants together, separated by a space.

  const fullName = firstName + ' ' + lastName;
  print(fullName);

  /// Exercise 3
  ///
  /// Using interpolation, create a string constant called `myDetails` that
  /// uses the `fullName` constant to create a string introducing yourself.
  /// For example, Ray Wenderlich's string would read: "Hello, my name is Ray
  /// Wenderlich."

  const myDetails = 'Hello, my name is $fullName.';
  print(myDetails);

  /// Challenge 1: Same same, but different
  ///
  /// This string has two flags that look the same. But they aren't! One of
  /// them is the flag of Chad and the other is the flag of Romania.
  ///
  /// ```
  /// const twoCountries = '🇹🇩🇷🇴';
  /// ```
  ///
  /// Which is which?
  ///
  /// **Hint**: Romania's regional indicator sequence is `RO`, and `R` is
  /// `127479` in decimal. Chad, which is _Tishād_ in Arabic and _Tchad_ in
  /// French, has a regional indicator sequence of `TD`. Sequence letter `T`
  /// is `127481` in decimal.

  const twoCountries = '🇹🇩🇷🇴';
  print(twoCountries.runes);
  // (127481, 127465, 127479, 127476)
  // 127481 is T (127465 is D) so the first flag is Chad.
  // 127479 is R (127476 is O) so the second flag is Romania.

  /// Challenge 2: How many?
  ///
  /// Given the following string:
  ///
  /// ```
  /// const vote = 'Thumbs up! 👍🏿';
  /// ```
  ///
  /// How many UTF-16 code units are there?
  /// How many Unicode code points are there?
  /// How many Unicode grapheme clusters are there?

  const vote = 'Thumbs up! 👍🏿';
  print(vote.codeUnits.length); // 15
  // There are 15 code units.
  print(vote.runes.length); // 13
  // There are 13 code points.
  print(vote.characters.length); // 12
  // There are 12 grapheme clusters.
  // See pubspec.yaml for the characters package dependency.
  // See the top of this file for the characters package import.

  /// Challenge 3: Find the error
  ///
  /// What is wrong with the following code?
  ///
  /// ```
  /// const name = 'Ray';
  /// name += ' Wenderlich';
  /// ```

  var name = 'Ray';
  name += ' Wenderlich';
  print(name);
  // `const` variables can't be changed, so you need to use `var`.

  /// Challenge 4: In summary
  ///
  /// What is the value of the constant named `summary`?
  ///
  /// ```
  /// const number = 10;
  /// const multiplier = 5;
  /// final summary = '$number \u00D7 $multiplier = ${number * multiplier}';
  /// ```

  const number = 10;
  const multiplier = 5;
  final summary = '$number \u00D7 $multiplier = ${number * multiplier}';
  print(summary);
  // 10 × 5 = 50
}
