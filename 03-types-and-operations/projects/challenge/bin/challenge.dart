// Copyright (c) 2020 Razeware LLC
// For full license & permission details, see LICENSE.

// If you get the error "Target of URI doesn't exist", make sure you have
// run `pub get`. Then restart VS Code.
import 'package:characters/characters.dart';

void main() {
  /// Challenge 1: Teacher's grading
  ///
  /// You're a teacher and in your class attendance is worth 20% of the grade,
  /// the homework is worth 30% and the exam is worth 50%. Your student got 90
  /// points for her attendance, 80 points for her homework and 94 points on
  /// her exam. Calculate her grade as an integer percentage rounded down.

  const attendance = 90;
  const homework = 80;
  const exam = 94;
  const rawGrade = (0.2 * attendance) + (0.3 * homework) + (0.5 * exam);
  final integerGrade = rawGrade.toInt();
  print(integerGrade);

  /// Challenge 2: Same same, but different
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

  /// Challenge 3: How many?
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

  /// Challenge 4: Find the error
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

  /// Challenge 5: What is the type of `value`?
  ///
  /// ```
  /// const value = 10 / 2;
  /// ```

  const value = 10 / 2;
  print(value); // 5.0
  // `value` is a `double`.
  // Division always produces a double in Dart.
  // You can see the type by hovering your mouse pointer over `value`.

  /// Challenge 6: What is the value of `summary`?
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
