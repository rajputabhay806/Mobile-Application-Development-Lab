// LABSHEET-1 - Q11
// Question: Find the largest of two numbers.

import 'dart:io';

void main() {
  stdout.write("Enter first number: ");
  double a = double.parse(stdin.readLineSync()!);

  stdout.write("Enter second number: ");
  double b = double.parse(stdin.readLineSync()!);

  print("Largest = ${a > b ? a : b}");
}
