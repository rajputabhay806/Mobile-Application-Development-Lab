// LABSHEET-1 - Q6
// Question: Calculate the area of a circle.

import 'dart:io';
import 'dart:math';

void main() {
  stdout.write("Enter radius: ");
  double radius = double.parse(stdin.readLineSync()!);

  double area = pi * radius * radius;

  print("Area of circle = $area");
}
