// Part 2 : 1. Requirement: Randomly select a number between 1 to 100 until you get the number x. x should be read from the Console. Log and print to the Console how many times you need to execute the code until the random method returns x and also print all generated random numbers until x is reached. Together with the happy path scenario, handle also some exception scenarios such as x is not between 1 and 100.
// 2. Implement the Dart program that satisfies the requirement with one of the Dart’s loop construct.
// 3. Implement the Dart program that satisfies the requirement using a Recursive Dart Function.
// 4. Prepare at least 5 test cases and test your program versions to verify they work as intended.
// 5. Compare the solutions in terms of reuse and clarity.

import 'dart:io';
import 'dart:math';
import 'dart:developer' as developer;

void main() {
  print('Please enter a number: ');
  int x = int.parse(stdin.readLineSync()!);
  /// version 1
  print("Random Number with out test case: Version 1");
  generateRandomNumbers(x);
  print('With Test Cases: Version 1');
  TestRandomNumberGenerators.testCase1();
  TestRandomNumberGenerators.testCase2();
  TestRandomNumberGenerators.testCase3();
  TestRandomNumberGenerators.testCase4();
  TestRandomNumberGenerators.testCase5();
  /// version 2
  print("Random Number with out test case: Version 2");
  int out= generateRandNumbers(x);
  print('This piece of code has been executed: $out');
  developer.log('This piece of code has been executed: $out');
  print('With Test Cases: Version 2');
  TestRandomNumberGenerators.testCase6();
  TestRandomNumberGenerators.testCase7();
  TestRandomNumberGenerators.testCase8();
  TestRandomNumberGenerators.testCase9();
  TestRandomNumberGenerators.testCase10();
}


///with recursive function
int generateRandNumbers(int x) {
  var rng = new Random();
  if (x == 0) {
    print('Enter a valid number');
  } else {
    print(rng.nextInt(100) + generateRandNumbers(x - 1));
  }
  return x;
}

/// with loop construct
int generateRandomNumbers(int x) {
  int count = 0;
  var rng = new Random();
  for (var i = 0; i < x; i++) {
    print(rng.nextInt(100));
    count++;
  }
  print('This piece of code has been executed: $count');
  developer.log('This piece of code has been executed: $count');
  return count;
}

/// test class 
class TestRandomNumberGenerators {
  static void testCase1() {
    int output = generateRandomNumbers(5);
    if (output == 5) {
      print('Test Passed');
    } else {
      print('Test Failed');
    }
  }

  static void testCase2() {
    int output = generateRandomNumbers(15);
    if (output == 15) {
      print('Test Passed');
    } else {
      print('Test Failed');
    }
  }

  static void testCase3() {
    int output = generateRandomNumbers(20);
    if (output == 20) {
      print('Test Passed');
    } else {
      print('Test Failed');
    }
  }

  static void testCase4() {
    int output = generateRandomNumbers(8);
    if (output == 8) {
      print('Test Passed');
    } else {
      print('Test Failed');
    }
  }

  static void testCase5() {
    int output = generateRandomNumbers(15);
    if (output == 15) {
      print('Test Passed');
    } else {
      print('Test Failed');
    }
  }
  ///version 2
  static void testCase6() {
    int output = generateRandNumbers(5);
    if (output == 5) {
      print('Test Passed');
    } else {
      print('Test Failed');
    }
  }

  static void testCase7() {
    int output = generateRandNumbers(15);
    if (output == 15) {
      print('Test Passed');
    } else {
      print('Test Failed');
    }
  }

  static void testCase8() {
    int output = generateRandNumbers(20);
    if (output == 20) {
      print('Test Passed');
    } else {
      print('Test Failed');
    }
  }

  static void testCase9() {
    int output = generateRandNumbers(8);
    if (output == 8) {
      print('Test Passed');
    } else {
      print('Test Failed');
    }
  }

  static void testCase10() {
    int output = generateRandNumbers(15);
    if (output == 15) {
      print('Test Passed');
    } else {
      print('Test Failed');
    }
  }
}


/// I have code and tried both methods and there is no difference in the results of both ways of 
/// generating random numbers but I think the execution time of loop construct is less than the 
/// recursive function because recursion consists of repeated calling of same function, 
/// equivalent to one for each iteration of the loop. Each function call requires information 
/// to be placed onto the stack, and then removed again when the function returns.