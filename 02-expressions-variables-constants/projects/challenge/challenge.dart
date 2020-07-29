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
  /// // 1
  /// const answer1 = (x * 100) + y;
  /// // 2
  /// const answer2 = (x * 100) + (y * 100);
  /// // 3
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
