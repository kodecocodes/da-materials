// Copyright (c) 2022 Razeware LLC
// For full license & permission details, see LICENSE.

import 'dart:math';

void main() {
  /// Arithmetic operations exercise
  ///
  /// Print the value of `1` over the square root of `2`.
  /// Confirm that it equals the sine of `45°`.

  // Remember to add the `dart:math` import at the top of the file.
  print(sin(45 * pi / 180));
  print(1 / sqrt(2));

  /// Naming data: Exercise 1
  ///
  /// Declare a constant of type `int` called `ageMe` and set it to your age.

  const myAge = 98;
  print(myAge);

  /// Naming data: Exercise 2
  ///
  /// Declare a variable of type `double` called `averageAge`. Initially, set
  /// the variable to your own age. Then, set it to the average of your age and
  /// your best friend's age.

  double averageAge = 98;
  averageAge = (98 + 27) / 2;
  print(averageAge);

  /// Naming data: Exercise 3
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

  /// Challenge 1: Variable Dogs
  ///
  /// Declare and `int` variable called `dogs` and set that equal to the number of dogs
  /// you own. Then imagine you bought a new puppy and increment the `dogs`
  /// variable by one.

  var dogs = 101;
  dogs++;
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
  /// Modify the first line so that the code compiles. Did you use `var`, `int`,
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
  /// Work out what each answer equals when you add the following lines of code to the code above:
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
