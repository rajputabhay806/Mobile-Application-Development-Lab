// LABSHEET-1 - Q9
// Question: Check whether a given number is positive, negative, or zero.

import 'dart:io';

void main() {
  stdout.write("Enter a number: ");
  double number = double.parse(stdin.readLineSync()!);

  if (number > 0) {
    print("Positive");
  } else if (number < 0) {
    print("Negative");
  } else {
    print("Zero");
  }
}
