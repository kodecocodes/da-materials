// Copyright (c) 2022 Razeware LLC
// For full license & permission details, see LICENSE.

void main() {
  /// Exercise 1
  ///
  /// Create a constant called `age1` and set it equal to `42`. Create another
  /// constant called `age2` and set it equal to `21`. Check by hovering over
  /// the variable names that the type for both has been inferred correctly as
  /// `int`.

  const age1 = 42;
  const age2 = 21;

  /// Exercise 2
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

  /// Challenge 2: What type?
  ///
  /// What is the type of `value`?
  ///
  /// ```
  /// const value = 10 / 2;
  /// ```

  const value = 10 / 2;
  print(value); // 5.0
  // `value` is a `double`.
  // Division always produces a double in Dart.
  // You can see the type by hovering your mouse pointer over `value`.
}
