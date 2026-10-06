// LABSHEET-1 - Q8
// Question: Swap the values of two variables.

import 'dart:io';

void main() {
  stdout.write("Enter first value: ");
  String a = stdin.readLineSync()!;

  stdout.write("Enter second value: ");
  String b = stdin.readLineSync()!;

  print("Before swapping: a = $a, b = $b");

  String temp = a;
  a = b;
  b = temp;

  print("After swapping: a = $a, b = $b");
}
