// Copyright (c) 2020 Razeware LLC
// For full license & permission details, see LICENSE.

void main() {
  nullOverviewMiniExercise1();
  nullOverviewMiniExercise2();
  nullOverviewMiniExercise3();
}

void nullOverviewMiniExercise1() {
  /// Null overview: Mini-exercise 1
  /// 
  /// Create a String variable called `profession` but don't give it a value. 
  /// Then you'll have `profession` `null`. :]
  
  String profession;
  print(profession);
}

void nullOverviewMiniExercise2() {
  /// Null overview: Mini-exercise 2
  /// 
  /// Use the null-aware access operator to print the `length` of `profession` 
  /// without causing an error.
  
  String profession;
  print(profession?.length);
}

void nullOverviewMiniExercise3() {
  /// Null overview: Mini-exercise 3
  /// 
  /// Pretend you don't know if `profession` is `null` or not, and use the 
  /// null-aware assignment operator to give `profession` a value of 
  /// "basketball player".
  
  String profession;
  profession ??= 'basketball player';
  print(profession);
}