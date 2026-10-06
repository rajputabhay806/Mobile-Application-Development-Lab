// LABSHEET-1 - Q21
// Question: Write a function that accepts two numbers and returns their sum.

import 'dart:io';

double add(double a, double b) {
  return a + b;
}

void main() {
  stdout.write("Enter first number: ");
  double a = double.parse(stdin.readLineSync()!);

  stdout.write("Enter second number: ");
  double b = double.parse(stdin.readLineSync()!);

  print("Sum = ${add(a, b)}");
}
