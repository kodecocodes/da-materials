// Copyright (c) 2020 Razeware LLC
//
// Permission is hereby granted, free of charge, to any person
// obtaining a copy of this software and associated documentation
// files (the "Software"), to deal in the Software without
// restriction, including without limitation the rights to use,
// copy, modify, merge, publish, distribute, sublicense, and/or
// sell copies of the Software, and to permit persons to whom
// the Software is furnished to do so, subject to the following
// conditions:
//
// The above copyright notice and this permission notice shall be
// included in all copies or substantial portions of the Software.
//
// Notwithstanding the foregoing, you may not use, copy, modify,
// merge, publish, distribute, sublicense, create a derivative work,
// and/or sell copies of the Software in any work that is designed,
// intended, or marketed for pedagogical or instructional purposes
// related to programming, coding, application development, or
// information technology. Permission for such use, copying,
// modification, merger, publication, distribution, sublicensing,
// creation of derivative works, or sale is expressly withheld.
//
// This project and source code may use libraries or frameworks
// that are released under various Open-Source licenses. Use of
// those libraries and frameworks are governed by their own
// individual licenses.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
// EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
// MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
// NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
// HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
// WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
// DEALINGS IN THE SOFTWARE.

// If you get the error "Target of URI doesn't exist", make sure you have 
// run `pub get`. Then restart VS Code.
import 'package:characters/characters.dart';

void main() {
  // Type conversion mini-exercise 1
  const age1 = 42;
  const age2 = 21;

  // Type conversion mini-exercise 2
  const average = (age1 + age2) / 2;
  print(average);
  // `average` is a `double` because any time you divide in Dart, the
  // result is a `double`. Division can result in non-integer answers, so
  // making the result an `int` could cause a loss of precision.

  // Strings mini-exercise 1
  const firstName = 'Ray';
  const lastName = 'Wenderlich';

  // Strings mini-exercise 2
  const fullName = firstName + ' ' + lastName;
  print(fullName);

  // Strings mini-exercise 3
  const myDetails = 'Hello, my name is $firstName $lastName.';
  print(myDetails);

  // Challenge 1
  const attendance = 90;
  const homework = 80;
  const exam = 94;
  const rawGrade = (0.2 * attendance) + (0.3 * homework) + (0.5 * exam);
  final integerGrade = rawGrade.toInt();
  print(integerGrade);

  // Challenge 2
  const twoCountries = '🇹🇩🇷🇴';
  print(twoCountries.runes);
  // (127481, 127465, 127479, 127476)
  // 127481 is T (127465 is D) so the first flag is Chad.
  // 127479 is R (127476 is O) so the second flag is Romania.

  // Challenge 3
  const vote = 'Thumbs up! 👍🏿';
  print(vote.codeUnits.length); // 15
  // There are 15 code units.
  print(vote.runes.length); // 13
  // There are 13 code points.
  print(vote.characters.length); // 12
  // There are 12 grapheme clusters.
  // See pubspec.yaml for the characters package dependency.
  // See the top of this file for the characters package import.

  // Challenge 4
  var name = 'Ray';
  name += ' Wenderlich';
  print(name);
  // `const` variables can't be changed, so you need to use `var`.

  // Challenge 5
  const value = 10 / 2;
  print(value); // 5.0
  // `value` is a `double`.
  // Division always produces a double in Dart.
  // You can see the type by hovering your mouse pointer over `value`.

  // Challenge 6
  const number = 10;
  const multiplier = 5;
  final summary = '$number \u00D7 $multiplier = ${number * multiplier}';
  print(summary);
  // 10 × 5 = 50
}
