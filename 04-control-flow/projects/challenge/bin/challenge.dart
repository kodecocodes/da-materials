// Copyright (c) 2021 Razeware LLC
// For full license & permission details, see LICENSE.

void main() {
  /// Challenge 1: Find the error
  ///
  /// What's wrong with the following code?
  ///
  /// ```
  /// const firstName = 'Bob';
  /// if (firstName == 'Bob') {
  ///   const lastName = 'Smith';
  /// } else if (firstName == 'Ray') {
  ///   const lastName = 'Wenderlich';
  /// }
  /// final fullName = firstName + ' ' + lastName;
  /// ```

  // `lastName` was declared in the `if` statement scope but was used
  // in the parent scope. You need to declare it at or above the scope
  // where it is needed.
  const firstName = 'Bob';
  var lastName = '';
  if (firstName == 'Bob') {
    lastName = 'Smith';
  } else if (firstName == 'Ray') {
    lastName = 'Wenderlich';
  }
  final fullName = firstName + ' ' + lastName;
  print(fullName);

  /// Challenge 2: Boolean challenge
  ///
  /// In each of the following statements, what is the value of the
  /// Boolean expression?
  ///
  /// ```
  /// true && true
  /// false || false
  /// (true && 1 != 2) || (4 > 3 && 100 < 1)
  /// ((10 / 2) > 3) && ((10 % 2) == 0)
  /// ```

  print(true && true); // true
  print(false || false); // false
  print((true && 1 != 2) || (4 > 3 && 100 < 1)); // true
  print(((10 / 2) > 3) && ((10 % 2) == 0)); // true

  /// Challenge 3: Next power of two
  ///
  /// Given a number, determine the next power of two above or equal to
  /// that number.

  const number = 946;
  var trial = 1;
  var times = 0;
  while (trial < number) {
    trial = trial * 2;
    times += 1;
  }
  print('Next power of 2 >= $number is $trial '
      'which is 2 to the power of $times.');
  // Next power of 2 >= 946 is 1024 which is 2 to the power of 10.

  /// Challenge 4: Fibonacci
  ///
  /// Calculate the nth Fibonacci number. Remember that Fibonacci numbers
  /// start its sequence with 1 and 1, and then subsequent numbers in the
  /// sequence are equal to the previous two values added together. You can
  /// get a refresher here: https://en.wikipedia.org/wiki/Fibonacci_number

  const n = 10;
  var current = 1;
  var previous = 1;
  var done = 2;
  while (done < n) {
    final next = current + previous;
    previous = current;
    current = next;
    done += 1;
  }
  print('Fibonacci number $n is $current.');
  // Fibonacci number 10 is 55.

  /// Challenge 5: How many times?
  ///
  /// In the following `for` loop, what will be the value of sum, and how many
  /// iterations will happen?
  ///
  /// ```
  /// var sum = 0;
  /// for (var i = 0; i <= 5; i++) {
  ///   sum += i;
  /// }
  /// ```

  var sum = 0;
  var count = 0;
  for (var i = 0; i <= 5; i++) {
    sum += i;
    count++;
  }
  print('The value of the sum is $sum after $count iterations.');
  // The value of the sum is 15 after 6 iterations.

  /// Challenge 6: The final countdown
  ///
  /// Print a countdown from 10 to 0.

  for (var i = 10; i >= 0; i--) {
    print(i);
  }

  /// Challenge 7: Print a sequence
  ///
  /// Print the sequence 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1.0.

  print('0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1.0');
  // Just kidding. :]
  // Here's one of several other ways to do it:
  for (var i = 0; i <= 10; i++) {
    print(i / 10);
  }
}
