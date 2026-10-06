// LABSHEET-1 - Q4
// Question: Accept two numbers and display their sum, difference, product, and quotient.

import 'dart:io';

void main() {
  stdout.write("Enter first number: ");
  double a = double.parse(stdin.readLineSync()!);

  stdout.write("Enter second number: ");
  double b = double.parse(stdin.readLineSync()!);

  print("Sum = ${a + b}");
  print("Difference = ${a - b}");
  print("Product = ${a * b}");

  if (b != 0) {
    print("Quotient = ${a / b}");
  } else {
    print("Quotient = Cannot divide by zero");
  }
}
