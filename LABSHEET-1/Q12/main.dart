// LABSHEET-1 - Q12
// Question: Find the largest of three numbers.

import 'dart:io';

void main() {
  stdout.write("Enter first number: ");
  double a = double.parse(stdin.readLineSync()!);

  stdout.write("Enter second number: ");
  double b = double.parse(stdin.readLineSync()!);

  stdout.write("Enter third number: ");
  double c = double.parse(stdin.readLineSync()!);

  double largest = a;
  if (b > largest) largest = b;
  if (c > largest) largest = c;

  print("Largest = $largest");
}
