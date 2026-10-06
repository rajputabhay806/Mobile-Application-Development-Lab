// LABSHEET-1 - Q5
// Question: Calculate the area and perimeter of a rectangle.

import 'dart:io';

void main() {
  stdout.write("Enter length: ");
  double length = double.parse(stdin.readLineSync()!);

  stdout.write("Enter width: ");
  double width = double.parse(stdin.readLineSync()!);

  double area = length * width;
  double perimeter = 2 * (length + width);

  print("Area = $area");
  print("Perimeter = $perimeter");
}
