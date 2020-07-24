// Copyright (c) 2020 Razeware LLC
// For full license & permission details, see LICENSE.

import 'dart:math';

void main(List<String> arguments) {
  challenge1();
  challenge2();
  challenge3();
}

/// Challenge 1: Prime time
///
/// Write a function that checks if a number is prime.
///
/// Here is some help if you want a few hints before you look at the answer:
///
/// First, write a function like this:
///
/// ```
/// bool isNumberDivisible(int number, int divisor)
/// ```
///
/// to determine if one number is divisible by another.
/// Hint: Use the modulo operator %.
///
/// Then, write the function
///
/// ```
/// bool isPrime(int number)
/// ```
///
/// that returns true if prime and false otherwise. A number is prime if
/// it's only divisible by 1 and itself. Loop through the numbers from 1
/// to the number and find the numbers divisors. If it has any divisors
/// other than 1 and itself, it is not prime.
///
/// Check the following cases:
/// isPrime(6); // false
/// isPrime(13); // true
/// isPrime(8893); // true
///
/// Hint 1: Numbers less than zero are not considered prime.
/// Hint 2: Use a for loop to look for divisors. You can start at 2
///         and if you end before the number, return false.
/// Hint 3: If you're clever, you can loop from 2 until you reach
///         the square root of the number. Add the following import
///         to the top of the file to access the sqrt function:
///
/// import 'dart:math';
void challenge1() {
  bool isNumberDivisible(int number, int divisor) {
    return number % divisor == 0;
  }

  bool isPrime(int number) {
    var isPrime = true;
    for (var i = 2; i <= sqrt(number); i++) {
      if (isNumberDivisible(number, i)) {
        isPrime = false;
      }
    }
    return isPrime;
  }

  print(isPrime(6));
  print(isPrime(13));
  print(isPrime(8893));
}

/// Challenge 2: Can you repeat that?
///
/// Write a function named `repeatTask` that looks like this:
///
/// ```
/// int repeatTask(int times, int input, Function task)
/// ```
///
/// It repeats a given `task` on `input` for `times` number of times.
///
/// Pass an anonymous function to `repeatTask` to square the input
/// of 2 four times. Confirm that you get the result 65536, since
/// 2 squared is 4,
/// 4 squared is 16,
/// 16` squared is 256, and
/// 256 squared is 65536.
void challenge2() {
  int repeatTask(int times, int input, Function task) {
    int result = task(input);
    for (var i = 1; i < times; i++) {
      result = task(result);
    }
    return result;
  }

  final result = repeatTask(4, 2, (num input) {
    return input * input;
  });

  print(result);
}

/// Challenge 3: Darts and arrows
///
/// Update Challenge 2 to use arrow syntax.
void challenge3() {
  int repeatTask(int times, int input, Function task) {
    int result = task(input);
    for (var i = 1; i < times; i++) {
      result = task(result);
    }
    return result;
  }

  // The anonymous function now uses arrow syntax.
  final result = repeatTask(4, 2, (num input) => input * input);

  print(result);
}
