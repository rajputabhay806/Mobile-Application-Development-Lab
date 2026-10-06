// LABSHEET-1 - Q20
// Question: Reverse a given number using a loop.

import 'dart:io';

void main() {
  stdout.write("Enter a number: ");
  int number = int.parse(stdin.readLineSync()!);

  int original = number;
  int reversed = 0;

  while (number != 0) {
    int digit = number % 10;
    reversed = reversed * 10 + digit;
    number ~/= 10;
  }

  print("Original number = $original");
  print("Reversed number = $reversed");
}
