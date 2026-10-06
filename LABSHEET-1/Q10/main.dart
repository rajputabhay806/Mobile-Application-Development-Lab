// LABSHEET-1 - Q10
// Question: Check whether a given number is even or odd.

import 'dart:io';

void main() {
  stdout.write("Enter an integer: ");
  int number = int.parse(stdin.readLineSync()!);

  if (number % 2 == 0) {
    print("Even");
  } else {
    print("Odd");
  }
}
