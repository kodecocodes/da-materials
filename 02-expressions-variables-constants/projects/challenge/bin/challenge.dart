// Copyright (c) 2020 Razeware LLC
// For full license & permission details, see LICENSE.

import 'dart:math';

void main() {
  /// Challenge 1: Variables
  ///
  /// Declare a constant called `myAge` and set it equal to your age.
  /// Also declare variable called `dogs` and set that equal to the
  /// number of dogs you own. Then imagine you bought a new puppy and increment
  /// the `dogs` variable by one.

  const myAge = 42;
  var dogs = 101;
  dogs++;
  print(myAge);
  print(dogs);

  /// Challenge 2: Make it compile
  ///
  /// Given the following code:
  ///
  /// ```
  /// age = 16;
  /// print(age);
  /// age = 30;
  /// print(age);
  /// ```
  ///
  /// Modify the first line so that it compiles. Did you use `var`, `int`,
  /// `final` or `const`?

  var age = 16;
  print(age);
  age = 30;
  print(age);
  // Using `int` rather than `var` would also have made it compile. However,
  // the general practice is to use `var` if the type is known and obvious from
  // from the value.

  /// Challenge 3: Compute the answer
  ///
  /// Consider the following code:
  ///
  /// ```
  /// const x = 46;
  /// const y = 10;
  /// ```
  ///
  /// Work out what answer equals when you add the following lines of code:
  ///
  /// ```
  /// const answer1 = (x * 100) + y;
  /// const answer2 = (x * 100) + (y * 100);
  /// const answer3 = (x * 100) + (y / 10);
  /// ```

  const x = 46;
  const y = 10;

  // 1
  const answer1 = (x * 100) + y;
  print(answer1); // 4610

  // 2
  const answer2 = (x * 100) + (y * 100);
  print(answer2); // 5600

  // 3
  const answer3 = (x * 100) + (y / 10);
  print(answer3); // 4601.0

  /// Challenge 4: Average rating
  ///
  /// Declare three constants called `rating1`, `rating2` and `rating3` of
  /// type `double` and assign each a value. Calculate the average of the
  /// three and store the result in a constant named `averageRating`.

  const rating1 = 7.9;
  const rating2 = 6.5;
  const rating3 = 10.0;
  const averageRating = (rating1 + rating2 + rating3) / 3;
  print(averageRating);

  /// Challenge 5: Quadratic equations
  ///
  /// A quadratic equation is something of the form
  ///
  /// `a⋅x² + b⋅x + c = 0`.
  ///
  /// The values of `x` which satisfy this can be solved by using the equation
  ///
  /// `x = (-b ± sqrt(b² - 4⋅a⋅c)) / (2⋅a)`.
  ///
  /// Declare three constants named `a`, `b` and `c` of type `double`. Then
  /// calculate the two values for `x` using the equation above (noting that
  /// the `±` means plus or minus, so one value of `x` for each). Store the
  /// results in constants called `root1` and `root2` of type `double`.

  const a = 2.0;
  const b = 3.0;
  const c = 1.0;
  final root1 = (-b + sqrt(b * b - 4 * a * c)) / (2 * a);
  final root2 = (-b - sqrt(b * b - 4 * a * c)) / (2 * a);
  print(root1);
  print(root2);
}