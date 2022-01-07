// Copyright (c) 2021 Razeware LLC
// For full license & permission details, see LICENSE.

import 'dart:math';

void main() {
  /// Arithmetic operations: Mini-exercise
  ///
  /// Did you know that the sine of `45°` equals `1` over the square root
  /// of `2`? Try it out!

  // Remember to add the `dart:math` import at the top of the file.
  print(sin(45 * pi / 180));
  print(1 / sqrt(2));

  /// Naming data: Mini-exercise 1
  ///
  /// Declare a constant of type `int` called `myAge` and set it to your age.

  const myAge = 98;
  print(myAge);

  /// Naming data: Mini-exercise 2
  ///
  /// Declare a variable of type `double` called `averageAge`. Initially, set
  /// the variable to your own age. Then, set it to the average of your age and 
  /// your best friend's age.

  double averageAge = 98;
  averageAge = (98 + 27) / 2;
  print(averageAge);

  /// Naming data: Mini-exercise 3
  ///
  /// Create a constant called `testNumber` and initialize it with whatever
  /// integer you'd like. Next, create another constant called `evenOdd` and
  /// set it equal to `testNumber` modulo `2`. Now change `testNumber` to
  /// various numbers. What do you notice about `evenOdd`?

  const testNumber = 42;
  const evenOdd = testNumber % 2;
  print(evenOdd);
  // `evenOdd` is 0 if `testNumber` is even.
  // `evenOdd` is 1 if `testNumber` is odd.
}