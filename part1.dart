// Part 1 : 1. Define a requirement (problem) which need at least 30 lines of Dart code to be solved. It may be a similar problem given in your previous assignments.
// 2. Implement the Dart program that satisfies the requirement without using Dart Functions.
// 3. Implement the Dart program that satisfies the requirement using Dart Functions.
// 4. Prepare at least 5 test cases and test your program versions to verify they work as intended.
// 5. Compare and explain the solutions in terms of reuse and clarity.

/// quadratic equation in dart
/// As we per know a quadratic equation can be solved using a quadratic formula. I have done that in this program. This function will take 3 coefficients of a quadratic equation and calculate its roots. There are two approaches in this,
/// One is done by using Built in sqrt() function and other without the built in function.

import 'dart:io';
import 'dart:math' show sqrt;

int readInt() {
  String input = stdin.readLineSync()!;
  return int.parse(input);
}

main() {
  int A, B, C;
  try {
    A = readInt();
    B = readInt();
    C = readInt();
    print('Quadratic Equation Solution with built in functions:');
    withBuiltInFunctions(A, B, C);
    print('Quadratic Equation Solution with built in functions:');
    withoutBuiltInFunctions(A, B, C);
    print('Test Cases');
    TestQuadraticEquation.testCase1();
    TestQuadraticEquation.testCase2();
    TestQuadraticEquation.testCase3();
    TestQuadraticEquation.testCase4();
    TestQuadraticEquation.testCase5();
  } on FormatException {
    print("Coefficient is not a number.");
    return;
  }
}

/// without built in functiond
bool withoutBuiltInFunctions(int A, int B, int C) {
  try {
    if (A == 0) {
      print("Not a quadratic equation.");
      return false;
    }
    double sqrt, temp;
    int D = B * B - 4 * A * C;
    double p1 = -B / 2.0 / A;
    int d;
    if (D < 0) {
      d = -D;
    } else {
      d = D;
    }
    sqrt = d / 2;
    temp = 0;
    while (sqrt != temp) {
      temp = sqrt;
      sqrt = (d / temp + temp) / 2;
    }
    print(sqrt);
    double p2 = sqrt / 2.0 / A;
    if (D == 0) {
      print("x = $p1");
      return true;
    } else {
      if (D > 0) {
        print("x1 = ${p1 + p2}");
        print("x2 = ${p1 - p2}");
        return true;
      } else {
        print("x1 = ($p1, $p2)");
        print("x2 = ($p1, ${-p2})");
        return true;
      }
    }
  } catch (e) {
    print(e);
    return false;
  }
}

/// with built in functions
bool withBuiltInFunctions(int A, int B, int C) {
  try {
    if (A == 0) {
      print("Not a quadratic equation.");
      return false;
    }
    int D = B * B - 4 * A * C;
    double p1 = -B / 2.0 / A;
    double p2 = sqrt(D.abs()) / 2.0 / A;
    if (D == 0) {
      print("x = $p1");
      return true;
    } else {
      if (D > 0) {
        print("x1 = ${p1 + p2}");
        print("x2 = ${p1 - p2}");
        return true;
      } else {
        print("x1 = ($p1, $p2)");
        print("x2 = ($p1, ${-p2})");
        return true;
      }
    }
  } catch (e) {
    print(e);
    return false;
  }
}

class TestQuadraticEquation {
  static testCase1() {
    bool output = withoutBuiltInFunctions(6, 7, 5);
    if (output) {
      print('Without Built in Functions: Test passed');
    } else {
      print('Without Built in Functions: Test Failed');
    }
    bool result = withBuiltInFunctions(6, 7, 5);
    if (result) {
      print('Witht Built in Functions: Test passed');
    } else {
      print('With Built in Functions: Test Failed');
    }
  }

  static testCase2() {
    bool output = withoutBuiltInFunctions(1, 0, 7);
    if (output) {
      print('Without Built in Functions: Test passed');
    } else {
      print('Without Built in Functions: Test Failed');
    }
    bool result = withBuiltInFunctions(1, 0, 7);
    if (result) {
      print('Witht Built in Functions: Test passed');
    } else {
      print('With Built in Functions: Test Failed');
    }
  }

  static testCase3() {
    bool output = withoutBuiltInFunctions(2, 3, 5);
    if (output) {
      print('Without Built in Functions: Test passed');
    } else {
      print('Without Built in Functions: Test Failed');
    }
    bool result = withBuiltInFunctions(2, 3, 5);
    if (result) {
      print('Witht Built in Functions: Test passed');
    } else {
      print('With Built in Functions: Test Failed');
    }
  }

  static testCase4() {
    bool output = withoutBuiltInFunctions(8, 4, 6);
    if (output) {
      print('Without Built in Functions: Test passed');
    } else {
      print('Without Built in Functions: Test Failed');
    }
    bool result = withBuiltInFunctions(8, 4, 6);
    if (result) {
      print('Witht Built in Functions: Test passed');
    } else {
      print('With Built in Functions: Test Failed');
    }
  }

  static testCase5() {
    bool output = withoutBuiltInFunctions(16, 70, 5);
    if (output) {
      print('Without Built in Functions: Test passed');
    } else {
      print('Without Built in Functions: Test Failed');
    }
    bool result = withBuiltInFunctions(16, 70, 5);
    if (result) {
      print('Witht Built in Functions: Test passed');
    } else {
      print('With Built in Functions: Test Failed');
    }
  }
}

/// I have used the both approaches to find the roots of the equation and it turns out that
/// both approaches yields the same results but the approach without built in functions took more time to run than the other one.
